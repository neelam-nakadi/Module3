library(fivethirtyeight)
library(tidyverse)

# Load steak survey dataset
data("steak_survey", package="fivethirtyeight")

# create subset, no Missing NAs
# Pick a specific region
sdat <- na.omit(steak_survey) %>%
  filter(region=="Mountain")

ggplot(sdat,
       aes(x = steak_prep, fill = female)) +
  geom_bar(position="dodge") +
  ggtitle(paste0("Steak Preparation Preference by Gender for ","Mountain"," Region"))
