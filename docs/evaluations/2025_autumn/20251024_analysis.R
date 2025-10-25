#!/bin/env Rscript
lines <- readr::read_lines("20251024.txt")

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

ggplot2::ggsave(filename = "20251024_all_confidences.png", width = 4, height = 2)

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

ggplot2::ggsave(filename = "20251024_confidences_per_question.png", width = 6, height = 7)

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


readr::write_csv(average_confidences, file = "20251024_average_confidences.csv")

ggplot2::ggplot(
  average_confidences,
  ggplot2::aes(y = learning_outcome, x = mean, fill = is_richel)
) +
  ggplot2::geom_bar(stat = "identity") +
  ggplot2::geom_vline(xintercept = mean_confidence)

ggplot2::ggsave(filename = "20251024_average_confidences_per_question.png", width = 6, height = 7)

t_sessions_taught <- t |> dplyr::filter(is_richel)
success_score <- mean(t$grade / 5.0)
readr::write_lines(x = success_score, "20251024_success_score_richel.txt")
