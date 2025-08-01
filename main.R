library(tidyverse)
library(here)

tv_hours_table <- gss_cat %>% 
  group_by(marital) %>% 
  summarise(tvhrs = mean(tvhours, na.rm = T))

write_csv(tv_hours_table, here("TV_hours_by_marital.csv"))
