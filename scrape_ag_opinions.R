# A test script to scrape legal opinions issues by the N.C. Attorney General

library(rvest)
library(dplyr)
library(readr)
library(lubridate)
library(janitor)

cat('...Downloading legal opinions...\n')

#save the url
url <- 'https://ncdoj.gov/legal-services/legal-opinions-directory/'

#capture the content
content <- read_html(url)

#parse and clean the table
opinions <- content %>% 
  html_table() %>% 
  .[[1]] %>%
  clean_names() %>% 
  mutate(date = mdy(date)) %>% 
  mutate(captured = today(), .after = date)

#save the file
opinions %>%
  write_csv('ncag_opinions.csv')
