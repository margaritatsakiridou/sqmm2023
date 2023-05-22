

library(tidyverse)

remotes::install_github("best-practice-and-impact/CARS")

data <- CARS::get_tidy_data_api(survey = "1270693") %>% janitor::clean_names()


data_xplore <- data %>% filter(!is.na(data$q_please_select_your_division_from_the_drop_down_menu_answer)) %>%
  select(1,10,12:110)
