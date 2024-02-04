#### Preamble ####
# Purpose: Get data on 2021 shelter usage and make table
# Author: Rohan Alexander
# Email: rohan.alexander@utoronto.ca
# Date: 1 July 2022
# Prerequisites: -

#### Workspace setup ####
install.packages("rvest")
install.packages("xml2")
library(rvest)
library(xml2)

raw_data <-
  read_html(
    "https://en.wikipedia.org/wiki/List_of_prime_ministers_of_Australia"
  )
write_html(raw_data, "inputs/data/pms.html")
