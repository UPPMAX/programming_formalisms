#!/bin/env Rscript
#
# TODO: convert to lesson hour, e.g. 1-8 for day 1, 9-16 for day 2, etc
#

descriptions <- readr::read_csv("description.csv", show_col_types = FALSE)

# Check all files exists
for (date in descriptions$date) {
  filename <- paste0(date, "_counts.csv")
  if (!file.exists(filename)) {
    stop("File with name '", filename, "' does not exist")
  }
}

# Check that all files have the same col_names
first_filename <- paste0(descriptions$date[1], "_counts.csv")
testthat::expect_true(file.exists(first_filename))
col_names <- names(readr::read_csv(first_filename, show_col_types = FALSE))
for (date in descriptions$date) {
  filename <- paste0(date, "_counts.csv")
  testthat::expect_true(file.exists(filename))
  these_col_names <- names(readr::read_csv(paste0(date, "_counts.csv"), show_col_types = FALSE))
  testthat::expect_equal(col_names, these_col_names)
}

str_to_date <- function(s) {
  testthat::expect_equal(8, stringr::str_length(s))
  paste0(
    stringr::str_sub(s, 1, 4),
    "-",
    stringr::str_sub(s, 5, 6),
    "-",
    stringr::str_sub(s, 7, 8)
  )
}
testthat::expect_equal(str_to_date("12345679"), "1234-56-79")

get_f_time <- function(t, begin, end) {
  d_all <- difftime(end, begin, units = "mins")
  d_t <- difftime(t, begin, units = "mins")
  as.double(d_t) / as.double(d_all)
}

t <- readr::parse_time("9:00")
begin <- readr::parse_time("9:00")
end <- readr::parse_time("16:00")
testthat::expect_equal(0.0, get_f_time(t, begin, end))

is_lunch <- function(t) {
  testthat::expect_equal(class(t), class(readr::parse_time("12:00")))
  t >= readr::parse_time("12:00") & t < readr::parse_time("13:00")
}

testthat::expect_false(is_lunch(readr::parse_time("11:59")))
testthat::expect_true(is_lunch(readr::parse_time("12:00")))
testthat::expect_false(is_lunch(readr::parse_time("13:00")))

# Put all counts in one big table
tables <- list()
for (i in seq_along(descriptions$date)) {
  date <- descriptions$date[i]
  
  t_start <- descriptions$t_start[i]
  t_end <- descriptions$t_end[i]
  filename <- paste0(date, "_counts.csv")
  testthat::expect_true(file.exists(filename))
  t <- readr::read_csv(filename, show_col_types = FALSE)
  t$f_time <- get_f_time(t$time, t_start, t_end)
  t$date <- as.Date(str_to_date(date))
  t$description <- descriptions$description[i]
  t$n_total <- t$n_cam_on + t$n_cam_off
  t$n_max <- max(t$n_total)
  t$f_total <- t$n_total / t$n_max
  t$f_on <- t$n_cam_on / t$n_max
  t$f_off <- t$n_cam_off / t$n_max
  t$most_have_cam_on <- mean(t$f_on) > 0.5
  tables[[i]] <- t
}
counts <- dplyr::bind_rows(tables)
counts <- counts[counts$f_time >= 0.0 & counts$f_time <= 1.0, ]
counts <- counts[!is_lunch(counts$time), ]
counts$session <- "morning"
counts$session[counts$f_time > 0.5] <- "afternoon"

counts$date_time <- as.POSIXct(lubridate::ymd(counts$date) + lubridate::hms(counts$time))
counts$day <- stringr::str_sub(counts$description, -1)

hist(counts$f_time, breaks = seq(0.0, 1.0, by = 0.01))


#
# Assume 1 process, do not split up
#
lesson_datetimes <- tibble::tribble(
  ~day, ~xmin, ~xmax,
  1, as.POSIXct("2024-04-22 09:00"), as.POSIXct("2024-04-22 16:00"),
  2, as.POSIXct("2024-04-23 09:00"), as.POSIXct("2024-04-23 16:00"),
  3, as.POSIXct("2024-04-24 09:00"), as.POSIXct("2024-04-24 16:00"),
  4, as.POSIXct("2024-04-25 09:00"), as.POSIXct("2024-04-25 16:00"),
  5, as.POSIXct("2024-04-26 09:00"), as.POSIXct("2024-04-26 16:00")
)
lesson_datetimes$day <- as.factor(lesson_datetimes$day)
lesson_datetimes$ymin <- 0
lesson_datetimes$ymax <- max(counts$n_total)


# Plot all in one, color by lesson
ggplot2::ggplot(counts, ggplot2::aes(x = date_time, y = n_total)) + 
  ggplot2::geom_point() + 
  ggplot2::geom_smooth(color = "black") +
  ggplot2::geom_line(
    data = counts, 
    mapping = ggplot2::aes(x = date_time, y = n_total, color = day),
    inherit.aes = FALSE
  ) + 
  ggplot2::geom_point(
    mapping = ggplot2::aes(x = date_time, y = n_total, color = day)
  ) + 
  ggplot2::geom_rect(
    data = lesson_datetimes, 
    inherit.aes = FALSE,
    ggplot2::aes(
      xmin = xmin,
      xmax = xmax,
      ymin = ymin,
      ymax = ymax,
      fill = day
    ),
    alpha = 0.2
  ) +
  ggplot2::labs(
    title = "Number of learners present in time under lesson time",
    subtitle = "Per course",
    caption = paste0(
      "Trendline is Loess smoothing of all data"
    )
  )

ggplot2::ggsave("n_learners_per_datetime.png", width = 7, height = 4)