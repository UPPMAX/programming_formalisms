#!/bin/env Rscript

t <- readr::read_csv("git_times.csv", show_col_types = FALSE, col_names = c("name", "date"))

t$hour <- lubridate::hour(t$date)

unique(t$name)
t$name[t$name == "richelbilderbeek"] <- "RB"
t$name[t$name == "Richèl Bilderbeek"] <- "RB"
t$name[t$name == "Björn Claremar"] <- "BC"
t$name[t$name == "QuantumTwitch"] <- "LE"
t$name[t$name == "Lars Eklund"] <- "LE"


tally <- dplyr::count(dplyr::select(t, name, hour), name, hour)

ggplot2::ggplot(tally, ggplot2::aes(x = hour, y = n, color = name)) +
  ggplot2::geom_line()

ggplot2::ggsave("git_commit_times_per_committer.png", width = 5, height = 5)  
