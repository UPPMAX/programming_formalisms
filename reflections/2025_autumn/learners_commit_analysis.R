#!/bin/env Rscript
# Adapted from https://raw.githubusercontent.com/drsimonj/blogR/refs/heads/master/Rmd/tidy-git-analysis.Rmd

# Parts 1 and 2
library(tidyverse)
library(glue)

# Directory into which git repo will be cloned
clone_dir <- "~/GitHubs/programming_formalisms_project_autumn_2025/"

list.files(clone_dir)

## Get tidy git history

# system(glue('git -C {clone_dir} log -3'))
# cat(system(glue('git -C {clone_dir} log -3'), intern = TRUE), sep = '\n')

log_format_options <- c(datetime = "cd", commit = "h", parents = "p", author = "an", subject = "s")
option_delim <- "\t"

log_format   <- glue("%{log_format_options}") %>% glue_collapse(option_delim)

log_options  <- glue('--pretty=format:"{log_format}" --date=format:"%Y-%m-%d %H:%M:%S"')


log_cmd      <- glue('git -C {clone_dir} log {log_options}')

history_logs <- system(log_cmd, intern = TRUE) %>%
  str_split_fixed(option_delim, length(log_format_options)) %>%
  as_tibble() %>%
  setNames(names(log_format_options))

# Take last year
t <- history_logs |> dplyr::filter(datetime > lubridate::today() - lubridate::years(1))

unique(t$author)

# Rename authors
rename_author <- function(name) {
  if (name == "richelbilderbeek") return("RB")
  if (name == "Björn Claremar") return("BC")
  if (name == "QuantumTwitch") return("LE")
  if (name == "Richèl Bilderbeek") return("RB")
  if (name == "Richel Bilderbeek") return("RB")
  if (name == "Linus Schönström") return("LS")
  if (name == "Lars Eklund") return("LE")
  if (name == "Lars-Uppmax") return("LE")
  if (name == "alicefurl") return("AF")
  if (name == "Alice Furlotti") return("AF")
  if (name == "afi3008") return("ALF")
  if (name == "cibi-sundaram") return("CS")
  if (name == "Cibi Sundaram") return("CS")
  if (name == "Carlos Gueto-Tettay") return("CG")
  if (name == "SLAment") return("LA")
  if (name == "Lore Ament") return("LA")
  if (name == "gabriel-ducrocq") return("GD")
  if (name == "Gabriel Ducrocq") return("GD")
  if (name == "Hyewon Jang") return("HJ")
  message("'", name, "'")
  stop(name)
}
rename_authors <- function(names) {
  as.character(Vectorize(rename_author, SIMPLIFY = TRUE)(names))
}

t$short_name <- rename_authors(t$author)
testthat::expect_true(all(nchar(t$short_name) == 2 | nchar(t$short_name) == 3))

t$hour <- lubridate::hour(t$datetime)
t$wday <- lubridate::wday(t$datetime, label = TRUE)

ggplot2::ggplot(t, ggplot2::aes(short_name)) +
  ggplot2::geom_histogram(stat = "count")

ggplot2::ggsave("learners_n_commits.png", width = 7, height = 7)


ggplot2::ggplot(t, ggplot2::aes(hour, fill = short_name)) +
  ggplot2::geom_histogram(position = "dodge")

ggplot2::ggsave("learners_commit_hours.png", width = 7, height = 7)

ggplot2::ggplot(t, ggplot2::aes(wday, fill = short_name)) +
  ggplot2::geom_histogram(stat = "count")

ggplot2::ggsave("learners_commit_wdays.png", width = 7, height = 7)




