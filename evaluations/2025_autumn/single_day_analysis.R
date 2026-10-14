#!/bin/env Rscript
#
# Analyse a single day
#
# Usage:
#
#   ./single_day_analysis [date in ISO 8601 format]
#
# Example:
#
#   ./single_day_analysis 20251029

args <- commandArgs(trailingOnly = TRUE)

if (length(args) != 1) {
  stop(
    "Please provide one argument to this script: \n",
    " \n",
    "   ./single_day_analysis [date in ISO 8601 format] \n",
    " \n",
    " Example: \n",
    " \n",
    "   ./single_day_analysis 20251029 \n"
  )
}

testthat::expect_equal(1, length(args))

date <- args
testthat::expect_silent(lubridate::as_date("20251029"))
testthat::expect_silent(lubridate::as_date(date))

data_filename <- paste0(date, ".txt")
lines <- readr::read_lines(data_filename)

learning_outcomes <- stringr::str_match(lines, "^N?R,([^,]+),")[, 2]
testthat::expect_true(length(learning_outcomes) > 0)
testthat::expect_equal(length(learning_outcomes), length(lines))

is_richel <- stringr::str_detect(lines, "^R,")
testthat::expect_equal(length(is_richel), length(lines))

grades_as_text <- stringr::str_match(lines, "^N?R,[^,]+,(.*)")[, 2]
testthat::expect_equal(length(learning_outcomes), length(grades_as_text))

grades_as_matrix <- stringr::str_split(grades_as_text, ",", simplify = TRUE)
testthat::expect_equal(length(learning_outcomes), nrow(grades_as_matrix))

table_list <- list()

for (i in seq_along(lines)) {
  grades_with_nas <- as.numeric(grades_as_matrix[i, ])
  grades <- grades_with_nas[!is.na(grades_with_nas)]
  t <- tibble::tibble(
    learning_outcome = learning_outcomes[i],
    is_richel = is_richel[i],
    grade = grades
  )
  table_list[[i]] <- t
}

t <- dplyr::bind_rows(table_list)

n_individuals <- 5 # A best guess by a human
n_ratings <- nrow(t)

mean_confidence <- mean(t$grade)

ggplot2::ggplot(t, ggplot2::aes(x = grade, fill = is_richel)) +
  ggplot2::geom_density(alpha = 0.5) +
  ggplot2::labs(
    title = "All confidences",
    caption = paste0(
      "#individuals: ", n_individuals, ". ",
      "#ratings: ", n_ratings, ". ",
      "Mean confidence: ", round(mean_confidence, digits = 2)
    )
  )

ggplot2::ggsave(
  filename = paste0(date, "_all_confidences.png"),
  width = 4,
  height = 2
)

ggplot2::ggplot(t, ggplot2::aes(x = grade, fill = is_richel)) +
  ggplot2::geom_histogram() +
  ggplot2::facet_grid(rows = "learning_outcome", scales = "free_y") +
  ggplot2::theme(
    strip.text.y = ggplot2::element_text(angle = 0),
    legend.position = "none"
  ) +
  ggplot2::labs(
    title = "Confidences per question"
  )

ggplot2::ggsave(filename = paste0(date, "_confidences_per_question.png"), width = 6, height = 7)

average_confidences <- t |>
  dplyr::group_by(learning_outcome, is_richel) |>
  dplyr::summarise(mean = mean(grade))

average_confidences <- average_confidences[order(average_confidences$mean), ]

average_confidences$learning_outcome <- as.factor(average_confidences$learning_outcome)
average_confidences$learning_outcome <- reorder(
  x = average_confidences$learning_outcome,
  X = order(average_confidences$mean),
  decreasing = TRUE
)


readr::write_csv(average_confidences, file = paste0(date, "_average_confidences.csv"))

ggplot2::ggplot(
  average_confidences,
  ggplot2::aes(y = learning_outcome, x = mean, fill = is_richel)
) +
  ggplot2::geom_bar(stat = "identity") +
  ggplot2::geom_vline(xintercept = mean_confidence)

ggplot2::ggsave(filename = paste0(date, "_average_confidences_per_question.png"), width = 6, height = 7)

## Richel-only part

t <- t |> dplyr::filter(is_richel)
success_score <- mean(t$grade / 5.0)
readr::write_lines(x = success_score, paste0(date, "_success_score_richel.txt"))

average_confidences <- average_confidences |> dplyr::filter(is_richel)

ggplot2::ggplot(
  average_confidences,
  ggplot2::aes(y = learning_outcome, x = mean)
) +
  ggplot2::geom_bar(stat = "identity") +
  ggplot2::geom_vline(xintercept = mean(average_confidences$mean))

ggplot2::ggsave(filename = paste0(date, "_average_confidences_per_question_richel.png"), width = 6, height = 7)
