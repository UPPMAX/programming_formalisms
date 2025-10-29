#!/bin/env Rscript
filenames <- list.files(pattern = "^.........txt")


file_to_table <- function(filename) {
  testthat::expect_true(file.exists(filename))

  lines <- readr::read_lines(filename)

  learning_outcomes <- stringr::str_match(lines, "^.,([^,]+),")[, 2]
  testthat::expect_true(length(learning_outcomes) > 0)
  testthat::expect_equal(length(learning_outcomes), length(lines))

  teacher <- stringr::str_match(lines, "^(.),")[, 2]
  testthat::expect_equal(length(teacher), length(lines))

  grades_as_text <- stringr::str_match(lines, "^.,[^,]+,(.*)")[, 2]
  testthat::expect_equal(length(learning_outcomes), length(grades_as_text))

  grades_as_matrix <- stringr::str_split(grades_as_text, ",", simplify = TRUE)
  testthat::expect_equal(length(learning_outcomes), nrow(grades_as_matrix))

  table_list <- list()

  for (i in seq_along(lines)) {
    grades_with_nas <- as.numeric(grades_as_matrix[i, ])
    grades <- grades_with_nas[!is.na(grades_with_nas)]
    t <- tibble::tibble(
      learning_outcome = learning_outcomes[i],
      teacher = teacher[i],
      grade = grades
    )
    table_list[[i]] <- t
  }

  t <- dplyr::bind_rows(table_list)
  t
}

testthat::expect_true("learning_outcome" %in% names(file_to_table(filenames[1])))
testthat::expect_true("teacher" %in% names(file_to_table(filenames[1])))
testthat::expect_true("grade" %in% names(file_to_table(filenames[1])))

files_to_table <- function(filenames) {
  testthat::expect_true(length(filenames) > 0)
  table_list <- list()
  for (i in seq_along(filenames)) {
    t <- file_to_table(filenames[i])
    table_list[[i]] <- t
  }

  t <- dplyr::bind_rows(table_list)
  t
}

t <- files_to_table(filenames)

t <- t |> dplyr::filter(teacher != "U")

mean_confidence <- mean(t$grade)

mean_confidence_per_teacher <- t |>
  dplyr::group_by(teacher) |>
  dplyr::summarize(mean_confidence = mean(grade))

ggplot2::ggplot(t, ggplot2::aes(x = grade, fill = teacher)) +
  ggplot2::geom_density(alpha = 0.5) +
  ggplot2::geom_vline(
    data = mean_confidence_per_teacher,
    ggplot2::aes(xintercept = mean_confidence, color = teacher)
  ) +
  ggplot2::labs(
    title = "All confidences",
    caption = paste0(
      "Mean confidence: ", round(mean_confidence, digits = 2)
    )
  )

ggplot2::ggsave(
  filename = "2025_autumn_all_confidences.png",
  width = 7,
  height = 7
)

