#!/bin/env Rscript
filenames <- list.files(pattern = "counts.csv")

list_of_tables <- list()

for (i in seq_along(filenames)) {
  filename <- filenames[i]
  t <- readr::read_csv(filename, show_col_types = FALSE)
  t$date <- as.Date(stringr::str_sub(filename, start = 1, end = 8), format = "%Y%m%d")
  list_of_tables[[i]] <- t
}

t_wide <- dplyr::bind_rows(list_of_tables)

t_wide$n_learners <- t_wide$n_cam_on + t_wide$n_cam_off

t <- t_wide |>
  dplyr::group_by(time, date, n_cam_on, n_cam_off, n_learners) |>
  tidyr::pivot_longer(cols = c(n_cam_on, n_cam_off, n_learners))
names(t) <- c("time", "date", "which_value", "value")

ggplot2::ggplot(
  t,
  ggplot2::aes(x = time, y = value, color = which_value)
) + ggplot2::geom_line() +
  # ggplot2::geom_point() +
  # ggplot2::geom_area(ggplot2::aes(x = time, y = n_cam_on), fill = "#AAA") +
   ggplot2::geom_point() +
  ggplot2::facet_grid(rows = ggplot2::vars(date)) +
  ggplot2::scale_x_time(
    limits = c(
      readr::parse_time("9:00"),
      readr::parse_time("16:00")
    )
  ) + ggplot2::scale_y_continuous(limits = c(0, NA)) +
  ggplot2::labs(
    title = "Number of learners in time"
  )

ggplot2::ggsave("n_learners_in_time_per_day.png", width = 7, height = 7)



t <- t_wide |> dplyr::select(time, n_cam_on, n_cam_off, n_learners) |>
  dplyr::group_by(time, n_cam_on, n_cam_off, n_learners) |>
  tidyr::pivot_longer(cols = c(n_cam_on, n_cam_off, n_learners))
names(t) <- c("time", "which_value", "value")

ggplot2::ggplot(
  t,
  ggplot2::aes(x = time, y = value, color = which_value)
) + ggplot2::geom_point() +
  ggplot2::geom_smooth() +
  ggplot2::scale_x_time(
    limits = c(
      readr::parse_time("9:00"),
      readr::parse_time("16:00")
    )
  ) + ggplot2::scale_y_continuous(limits = c(0, NA)) +
  ggplot2::labs(
    title = "Number of learners in time"
  )

ggplot2::ggsave("average_n_learners_in_time.png", width = 7, height = 7)
