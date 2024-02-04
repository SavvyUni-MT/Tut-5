#### Preamble ####
# Purpose: Get data on 2021 shelter usage and make table
# Author: Rohan Alexander
# Email: rohan.alexander@utoronto.ca
# Date: 1 July 2022
# Prerequisites: -

#### Workspace setup ####
install.packages("tidyverse")
install.packages("babynames")

library(babynames)
library(tidyverse)


#### Simulate ####

set.seed(853)

simulated_dataset <-
  tibble(
    prime_minister = babynames |>
      filter(prop > 0.01) |>
      distinct(name) |>
      unlist() |>
      sample(size = 10, replace = FALSE),
    birth_year = sample(1700:1990, size = 10, replace = TRUE),
    years_lived = sample(50:100, size = 10, replace = TRUE),
    death_year = birth_year + years_lived
  ) |>
  select(prime_minister, birth_year, death_year, years_lived) |>
  arrange(birth_year)

simulated_dataset