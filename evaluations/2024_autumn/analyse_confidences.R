#!/bin/env Rscript

days <- c("monday", "tuesday", "wednesday", "thursday", "friday")
for (day in days) {
  filename <- paste0("confidences_", day, ".csv")
  testthat::expect_true(file.exists(filename))
}

# Take the raw string from a CSV file and convert it tp clean header names
header_to_names <- function(header) {
  header_strs_raw <- stringr::str_split(string = header, pattern = ",")[[1]]
  header_strs_1 <- stringr::str_remove(header_strs_raw, "I am confidant that...: ")
  header_strs_2 <- stringr::str_remove(header_strs_1, "^- ")
  names <- header_strs_2
  names
}

get_example_header <- function() {
  "Date,Session,Voter,Final confidence report:,I am confidant that...:  I understand how to methodically optimize the runtime speed of my code,I am confidant that...: - I understand what Big O is,I am confidant that...: - I can create a Big O profile of my project,I am confidant that...: - I can read a runtime speed profile,I am confidant that...: - I can create a runtime speed profile,I am confidant that...: - I can mentalize the installation needs from the users' perspective,I am confidant that...: - I can evaluate different available tools for reproducibility and installations,I am confidant that...: - I can make an installation instruction for potential users,I am confidant that...: - I know the most important sections for a full public README,I am confidant that...: - I can make citation info,I am confidant that...: - I know how to find instruction of going to more sophisticated documentation,I am confidant that...: The course met my expectations,I am confidant that...: I learned a lot of new things about software development as a process,I am confidant that...: I will use what I learned in my projects"  
}

get_example_header


# Convert a confidences file to a table
file_to_table <- function(filename) {
  testthat::expect_true(file.exists(filename))
  lines_with_header <- readr::read_lines(filename)
  header <- lines_with_header[3]
  lines <- lines_with_header[-(1:3)]
  n_commas <- stringr::str_count(lines[1], ",")
  n_cols <- n_commas + 1
  text_table <- stringr::str_split_fixed(string = lines, pattern = ",", n = n_cols)
  t <- tibble::as_tibble(text_table)
  table_names <- header_to_names(header)
  testthat::expect_equal(ncol(t), length(table_names))
  names(t) <- table_names
  t
}

t <- readr::read_csv("20240925_fixed.csv")
t$Timestamp <- NULL
t$`Any feedback?` <- NULL
# tail(names(t))
questions <- stringr::str_remove(
  stringr::str_remove(
    names(t), 
    "Give you confidence levels of the following statements: \\["),
  "\\]"
)
#new_names <- c(
#  paste0("q0", seq(1, 9)),
#  paste0("q", seq(10, 16))
#)
new_names <- questions
names(t) <- new_names

t$i <- seq(1, nrow(t))

names(t)
t_tidy <- tidyr::pivot_longer(t, cols = starts_with("I", ignore.case = FALSE))
names(t_tidy)
# No idea why 'starts_with("I", ignore.case = FALSE)' does not work today
t_tidy$`Any other feedback?` <- NULL
names(t_tidy) <- c("i", "question", "answer")
t_tidy

n_individuals <- length(unique(t_tidy$i))
n_ratings <- length(t_tidy$answer[!is.na(t_tidy$answer)])

mean_confidence <- mean(t_tidy$answer[!is.na(t_tidy$answer)])

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_histogram() + 
  ggplot2::labs(
    title = "All confidences",
    caption = paste0(
      "#individuals: ", n_individuals, ". ",
      "#ratings: ", n_ratings, ". ",
      "Mean confidence: ", round(mean_confidence, digits = 2)
    )
  )

ggplot2::ggsave(filename = "all_confidences.png", width = 4, height = 2)

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_histogram() + 
  ggplot2::facet_grid(rows = "question", scales = "free_y") +
  ggplot2::theme(
    strip.text.y = ggplot2::element_text(angle = 0),
    legend.position = "none"
  ) +
  ggplot2::labs(
    title = "Confidences per question"
  )

ggplot2::ggsave(filename = "confidences_per_question.png", width = 6, height = 7)

names(t_tidy)

readr::write_csv(x = dplyr::tally(dplyr::group_by(t_tidy, question, answer)), file = "tally.csv")
