#!/bin/env Rscript

get_all_days <- function() {
  c("monday", "tuesday", "wednesday", "thursday", "friday")
}

days <- get_all_days()
testthat::expect_true("monday" %in% get_all_days())

day_to_filename <- function(day) {
  testthat::expect_true(day %in% get_all_days())
  paste0("confidences_", day, ".csv")
}

testthat::expect_equal(day_to_filename("monday"), "confidences_monday.csv")

# Check if all files exist
for (day in days) {
  filename <- day_to_filename(day)
  testthat::expect_true(file.exists(filename))
}

get_example_header_monday <- function() {
  "Date,Session,Voter,How confident do you feel about the learning today:,I feel confident I can: The purpouse of formalism in Computer Science,I feel confident I can: What is the Software development life cycle,I feel confident I can: What are the outcomes of a Program,I feel confident I can: What are the steps of development,I feel confident I can: What is UML,I feel confident I can: I know basic Git,I feel confident I can: I can connect to the course repo,I feel confident I can: I kow how a remote repo works,I feel confident I can: I kow why we specify requirments,I feel confident I can: I know ehat a Requirment is ,I feel confident I can: I can find the needs/buissnes requirments,I feel confident I can: I know what a derived requirement,I feel confident I can: I know how to write a formal requiremnts documentation,I feel confident I can: I can do a simple FMEA,I feel confident I can: I can make an issue in the project,I feel confident I can: I know the difference between a requirment and an Feature"  
}
get_example_header_tuesday <- function() {
  "Date,Session,Voter,Let's see how confident you are for tuesday:,How confident am I?: I understand what SDLC is,How confident am I?: I know the major parts of a developel cycle,How confident am I?: I understand the spiral model of SDLC,How confident am I?: I know the major technichal risks with a SW project,How confident am I?: I know how to  make a risk for a requirment,How confident am I?: I understand the key features of  XP (eXtreme Programming),How confident am I?: I know the basic features of RAD (Rapid Application Development) ,\"How confident am I?: I know where to find the \"\"latest\"\" best practices\",How comfortable am I with?:  I understand why issues are important,\"How comfortable am I with?: - I can create, assign and close an issue\",How comfortable am I with?: - I understand why a kanban board is important,How comfortable am I with?: - I can use a kanban board,How comfortable am I with?: - I can name at least three roles that are present in a team,How comfortable am I with?: - I understand why TDD is important,How comfortable am I with?: - I can use TDD to develop functions,How comfortable am I with?: - I understand why `assert` is important"
}
get_example_header_wednesday <- function() {
  "Date,Session,Voter,Confidence Report wednesday:,I feel confident that :: - I understand why pair programming is important,I feel confident that :: - I understand what good pair programming looks like,I feel confident that :: - I can pair program,I feel confident that :: - I understand the benefit of using a testing framework,\"I feel confident that :: - I can put the files of my code in the right locations,\",I feel confident that ::   for the testing framework to find them,I feel confident that :: - I can write tests using a formal testing framework,I feel confident that :: - I understand what continuous integration is,confidence level: I can explain and evaluate the usefulness of branches,\"confidence level: I can create, switch and delete a git branch locally\",\"confidence level: create, switch and delete a git branch on GitHub\",confidence level: I can merge locally,confidence level: I can manage merge conflicts locally,confidence level: I can merge on GitHub,confidence level: I can manage merge conflicts on GitHub,Confidence level: I can do Pull requests,Confidence level: I can do a code review (in GitHub),Confidence level: I understand when a forked workflow is recommended,Confidence level: I have an idea about how to contribute as an external contributor,Confidence level: I understand the FIND concept,Confidence level: I feel confidence and motivation in making my code open-source"
}
get_example_header_thursday <- function() {
  "Date,Session,Voter,Its time for our confidence:,What are my confidence level in my...: - Understand the benefits of object-oriented development,\"What are my confidence level in my...:     - Learn the definition and characteristics of an object, including its ability to save state and perform operations.\",\"What are my confidence level in my...:     - Comprehend the principles of object-oriented development, such as information hiding, encapsulation, and message passing.\",What are my confidence level in my...:     - Understand the definition and structure of a class as a collection of objects with common traits and behaviors.,\"What are my confidence level in my...:     - Recognize the importance of relationships between classes, including association, composition, and aggregation, in class diagrams.\",What are my confidence level in my...: I understand why function design is important,What are my confidence level in my...: - I can give some features of good function design,What are my confidence level in my...: - I can give a function a proper name,What are my confidence level in my...: - I can criticise functions,What are my confidence level in my...: - I can write a class to express what the data it contains,What are my confidence level in my...: - I inderstand difference between composition and aggregation,What are my confidence level in my...: - I understand the type of relation 'composition' is,What are my confidence level in my...: - I understand the type of relation 'inheritance' is,What are my confidence level in my...: Understand the concept of code smells and design smells.,What are my confidence level in my...:     Gain an introductory understanding of modular programming,\"What are my confidence level in my...:     Learn about common interfaces, protocols, and their role in modular programming.\",What are my confidence level in my...: Recognize and address tight coupling in code to improve modularity.,What are my confidence level in my...: Iterative refactoring."
}
get_example_header_friday <- function() {
  "Date,Session,Voter,Final confidence report:,I am confidant that...:  I understand how to methodically optimize the runtime speed of my code,I am confidant that...: - I understand what Big O is,I am confidant that...: - I can create a Big O profile of my project,I am confidant that...: - I can read a runtime speed profile,I am confidant that...: - I can create a runtime speed profile,I am confidant that...: - I can mentalize the installation needs from the users' perspective,I am confidant that...: - I can evaluate different available tools for reproducibility and installations,I am confidant that...: - I can make an installation instruction for potential users,I am confidant that...: - I know the most important sections for a full public README,I am confidant that...: - I can make citation info,I am confidant that...: - I know how to find instruction of going to more sophisticated documentation,I am confidant that...: The course met my expectations,I am confidant that...: I learned a lot of new things about software development as a process,I am confidant that...: I will use what I learned in my projects"  
}


# Take the raw string from a CSV file and convert it tp clean header names
header_to_names <- function(header) {
  temp_filename <- tempfile()
  readr::write_lines(x = header, file = temp_filename)
  t <- readr::read_csv(file = temp_filename, show_col_types = FALSE)
  header_strs <- names(t)
  
  header_strs <- stringr::str_replace(header_strs, "\"latest\"", "'latest'")
  
  #header_strs_as_table <- read.csv(textConnection(header), header = FALSE)
  #header_strs <- as.character(header_strs_as_table[1, ])
  testthat::expect_equal(sum(stringr::str_count(header_strs, "\"")), 0)
  remove_strs <- c(
    "I am confidant that...: ", 
    "I feel confident I can: ", 
    "How comfortable am I with\\?: ",
    "How confident am I\\?: ",
    "I feel confident that :: ",
    "Confidence level: ",
    "confidence level: ",
    "What are my confidence level in my...: ",
    "^    - ",
    "^- " # Must be last
  )
  for (remove_str in remove_strs) {
    header_strs <- stringr::str_remove(header_strs, remove_str)
    header_strs <- stringr::str_trim(header_strs)
  }
  header_strs
}

testthat::expect_equal(c("A", "B"), header_to_names(header = "A,B"))
testthat::expect_equal(0, sum(stringr::str_count(header_to_names(get_example_header_monday()), "I feel")))
# header_to_names(get_example_header_monday())

testthat::expect_equal(0, sum(stringr::str_count(header_to_names(header = get_example_header_tuesday()), "How comfortable")))
testthat::expect_equal(0, sum(stringr::str_count(header_to_names(header = get_example_header_tuesday()), "confident am I")))
# header_to_names(get_example_header_tuesday())

testthat::expect_equal(0, sum(stringr::str_count(header_to_names(get_example_header_wednesday()), "confident")))
# header_to_names(get_example_header_wednesday())

testthat::expect_equal(0, sum(stringr::str_count(header_to_names(get_example_header_thursday()), "What are my confidence level")))
# header_to_names(get_example_header_thursday())

testthat::expect_equal(18, length(header_to_names(get_example_header_friday())))
# header_to_names(get_example_header_friday())

# Convert a confidences file to a table, with all columns
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

for (day in get_all_days()) {
  testthat::expect_no_error(
    file_to_table(filename = day_to_filename(day))
  )
}

file_to_confidences <- function(filename, max_n_chars = 80) {
  t <- file_to_table(filename)
  testthat::expect_true(stringr::str_detect(names(t)[4], "[cC]onf"))
  t[, 4] <- NULL
  testthat::expect_true(stringr::str_detect(names(t)[3], "[vV]oter"))
  t[, 3] <- NULL
  testthat::expect_true(stringr::str_detect(names(t)[2], "[sS]ession"))
  t[, 2] <- NULL
  testthat::expect_true(stringr::str_detect(names(t)[1], "[dD]ate"))
  t[, 1] <- NULL
  names(t) <- stringr::str_sub(names(t), 1, max_n_chars)
  t
}

  
testthat::expect_no_error(file_to_confidences(filename = day_to_filename("wednesday")))

# Will not fit otherwise
testthat::expect_true(max(nchar(names(file_to_confidences(filename = day_to_filename("thursday"))))) < 101)

for (day in get_all_days()) {
  filename <- day_to_filename(day)
  testthat::expect_no_error(file_to_confidences(filename))
}


for (day in get_all_days()) {
  filename <- day_to_filename(day)
  testthat::expect_true(file.exists(filename))
  t <- file_to_confidences(filename)
  t$i <- seq(1, nrow(t))
  t_tidy <- tidyr::pivot_longer(t, cols = !tidyr::last_col())
  names(t_tidy) <- c("i", "question", "answer")
  t_tidy$answer <- as.numeric(t_tidy$answer)
  
  t_tidy <- t_tidy[which(!is.na(t_tidy$answer)), ]
  testthat::expect_equal(0, sum(is.na(t_tidy$answer)))
  
  n_individuals <- length(unique(t_tidy$i))
  n_ratings <- length(t_tidy$answer[!is.na(t_tidy$answer)])
  mean_confidence <- mean(t_tidy$answer[!is.na(t_tidy$answer)])

  all_confidences_filename <- paste0(day, "_all_confidences.png")

  ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
    ggplot2::geom_histogram(binwidth = 1) + 
    ggplot2::labs(
      title = "All confidences",
      caption = paste0(
        "#individuals: ", n_individuals, ". ",
        "#ratings: ", n_ratings, ". ",
        "Mean confidence: ", round(mean_confidence, digits = 2)
      )
    )
  ggplot2::ggsave(filename = all_confidences_filename, width = 4, height = 2)

  
  ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
    ggplot2::geom_histogram(binwidth = 1) + 
    ggplot2::facet_grid(rows = "question", scales = "free_y") +
    ggplot2::theme(
      strip.text.y = ggplot2::element_text(angle = 0),
      legend.position = "none"
    ) +
    ggplot2::labs(
      title = "Confidences per question"
    )

  confidences_per_question_filename <- paste0(day, "_confidences_per_question.png")
  ggplot2::ggsave(filename = confidences_per_question_filename, width = 7, height = 7)

  tally <- dplyr::tally(dplyr::group_by(t_tidy, question, answer))
  tally_filename <- paste0(day, "_tally.csv")
  readr::write_csv(x = tally, file = tally_filename)

  average_tally <- dplyr::summarise(dplyr::group_by(t_tidy, question), mean = mean(answer))
  average_tally_filename <- paste0(day, "_averages.csv")
  readr::write_csv(x = average_tally, file = average_tally_filename)
}
