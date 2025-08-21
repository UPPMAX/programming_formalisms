#!/bin/env Rscript
#
# Checks if the schedule follows all constraints
#
# Usage:
#
#   ./scripts/check_schedule.R


if (stringr::str_count(string = getwd(), pattern = "scripts")) {
  setwd("..")
}

if (stringr::str_count(string = getwd(), pattern = "scripts")) {
  stop(
    "FATAL ERROR. \n",
    "Please run the script from the project root. \n",
    "Present working director: ", getwd(), " \n",
     " \n",
     "Tip: like this \n",
     " \n",
     "  ./scripts/check_schedule.R \n",
     " \n"
  )
}

get_schedule_filename <- function() {
  schedule_filename <- "docs/schedule.md"
  if (!file.exists(schedule_filename)) {
    stop(
      "Cannot find '", schedule_filename, "'. \n",
      "Current working directory: ", getwd()
    )
  }
  schedule_filename
}

get_constraints_filename <- function() {
  constraints_filename <- "scripts/constraints.csv"
  if (!file.exists(constraints_filename)) {
    stop(
      "Cannot find '", constraints_filename, "'. \n",
      "Current working directory: ", getwd()
    )
  }
  constraints_filename
}

#' Extracts only the subjects
#'
#' In the schedule of the course, subjects are commonly
#' connected with a link, e.g. `[assert](assert/README.md)`

extract_subject <- function(raw_subject) {
  subject_1 <- stringr::str_replace(raw_subject, "\\]\\(.*\\.md\\)", "")
  subject_2 <- stringr::str_replace(subject_1, "\\[", "")
  stringr::str_trim(subject_2)
}

testthat::expect_equal(
  extract_subject(raw_subject = "[assert](assert/README.md)"),
  "assert"
)


read_schedule_from_file <- function() {
  schedule_filename <- get_schedule_filename()
  testthat::expect_true(file.exists(schedule_filename))
  all_lines <- readr::read_lines(file = schedule_filename)
  schedule_lines_with_header <- stringr::str_subset(all_lines, pattern = ".+\\|.+\\|.+\\|")
  header_line <- schedule_lines_with_header[1]
  schedule_lines <- schedule_lines_with_header[-(1:2)]
  schedule_strs <- stringr::str_split_fixed(schedule_lines, "\\|", n = 4)
  t_schedule <- tibble::as_tibble(schedule_strs)
  testthat::expect_equal(ncol(t_schedule), 4)
  names(t_schedule) = c("day","time","teacher","subject")
  t_schedule$day <- stringr::str_trim(t_schedule$day)
  t_schedule$time <- stringr::str_trim(t_schedule$time)
  t_schedule$teacher <- stringr::str_trim(t_schedule$teacher)
  t_schedule$subject <- extract_subject(t_schedule$subject)
  t_schedule
}

testthat::expect_output(read_schedule_from_file())
testthat::expect_equal(
  0,
  sum(
    stringr::str_detect(
      read_schedule_from_file()$subject,
      "\\["
    )
  )
)

read_constraints <- function() {
  constraints_filename <- get_constraints_filename()
  t <- readr::read_csv(constraints_filename, show_col_types = FALSE)
  testthat::expect_true("topic" %in% names(t))
  testthat::expect_true("prerequisite" %in% names(t))
  t
}

# Will stop with an error if not
check_constraints <- function() {
  schedule <- read_schedule_from_file()
  constraints <- read_constraints()
  for (constraint_index in seq_len(nrow(constraints))) {
    constraint <- constraints[constraint_index, ]
    topic <- constraint$topic
    topic_indices <- stringr::str_which(
      schedule$subject,
      pattern = stringr::regex(topic, ignore_case = TRUE)
    )
    if (length(topic_indices) == 0) {
      stop(
        "Cannot find topic '", topic, "' (from constraints.csv)",
        " in the schedule. \n",
        " \n",
        "Topics in the schedule: ",
        " \n",

        paste(paste("-", unique(schedule$subject)), collapse = "\n")
      )
    }
    testthat::expect_true(length(topic_indices) > 0)
    # A topic may be taught multiple hours
    topic_index <- topic_indices[1]
    testthat::expect_true(topic_index > 0)

    prerequisite <- constraint$prerequisite
    prereq_indices <- stringr::str_which(
      schedule$subject,
      pattern = stringr::regex(prerequisite, ignore_case = TRUE)
    )
    if (length(prereq_indices) == 0) {
      stop(
        "Prerequisite with name '", prerequisite, "' is not found \n",
        "among the subjects (shown at the bottom of this error message). \n",
        "Tip: edit the constraints file at '",
        get_constraints_filename(),
        "' \n",
        "to exactly match the topic in the schedule.",
        " \n",
        "Topics in the schedule: ",
        " \n",
        paste(paste("-", unique(schedule$subject)), collapse = "\n")

      )
    }
    # A prereq may be taught multiple hours
    prereq_index <- prereq_indices[1]
    testthat::expect_true(prereq_index > 0)

    if (prereq_index > topic_index) {
      stop(
        "Incorrect order detected: \n",
        "Topic: ", topic, " at row ", topic_index, " \n",
        "Prerequisite: ", prerequisite, " at row ", prereq_index, " \n"
      )
    }
  }
}


message("This is the schedule:")
read_schedule_from_file()

message("These are the constraints:")
read_constraints()

message("Checking:")
check_constraints()
message("WORKS!")

