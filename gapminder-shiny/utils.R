packages <- c('tidyr', 'plyr', 'dplyr', 'readr')
new.packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

require('tidyr')
require('plyr')
require('dplyr')
require('readr')

load_data <- function(){
  fert_df <- read.csv("fertility_rate.csv", skip=3)
  life_df <- read.csv("life_expectancy.csv", skip=3)
  country_df <- read.csv("metadata_country.csv")
  pop_df <- read.csv("population.csv")
  
  names(fert_df)
  
  # clean csvs'
  fert_df <- subset(fert_df, TRUE,-c(Indicator.Name, Indicator.Code, X, X2015, X2016))
  life_df <- subset(life_df, TRUE,-c(Indicator.Name, Indicator.Code, Country.Name, X, X2015, X2016))
  pop_df <- subset(pop_df, TRUE,-c(Indicator.Name, Indicator.Code, Country.Name, X, X2015, X2016))
  country_df <- subset(country_df, TRUE,-c(X, IncomeGroup, SpecialNotes, TableName))
  
  # reshape data
  fert_gath_df <- gather(fert_df, "year", "fert_rate",  3:57)
  life_gath_df <- gather(life_df, "year", "life", 2:56)
  pop_gath_df <- gather(pop_df, "year", "pop", 2:56)
  
  # join data
  joined_df <- join(fert_gath_df, life_gath_df, by=c("Country.Code", "year")) %>%
    join(pop_gath_df, by=c("Country.Code", "year")) %>% 
    join(country_df, by=c("Country.Code"))
  
  # convert from str -> int
  joined_df$year <- parse_number(joined_df$year)
  
  # drop unassociated regions 
  joined_df <- joined_df[joined_df$Region != '', ]
  joined_df$Region <- droplevels(joined_df$Region)
  
  # drop bad data
  joined_df <- na.omit(joined_df)
  return(joined_df)
}

# could be optimized to not grab
# data b.c. application runs
# load_data twice
get_regions <- function(){
  joined_df <- load_data()
  na.omit(unique(joined_df$Region))
}