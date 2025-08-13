library(dplyr)
library(plotly)
library(ggplot2)
library(ggtext)
library(shinycssloaders)
library(shiny)
library(shinydashboard)
library(DT)
library(ggcorrplot)

#first tab panel
my_data <- USArrests
my_data %>%
  str()

my_data %>%
  summary()

my_data %>%
  head()

states = rownames(my_data)
my_data = my_data %>%
  mutate(State =  states)

str(my_data)

#second tab panel


c1 = my_data %>%
  select(-State) %>%
  names()


c2 = my_data %>% 
  select(-"State", -"UrbanPop") %>% 
  names()

# top 5 States with high crime Rates
my_data %>%
  select(State,Rape) %>%
  arrange(desc(Rape))%>%
  head(5)


# top 5 States with low crime Rates
my_data %>%
  select(State,Rape) %>%
  arrange(Rape)%>%
  head(5)


state_map <- map_data("state") 
my_data1 = my_data %>% 
  mutate(State = tolower(State))  
merged =right_join(my_data1, state_map,  by=c("State" = "region"))

st = data.frame(abb = state.abb, stname=tolower(state.name), x=state.center$x, y=state.center$y)

new_join = left_join(merged, st, by=c("State" = "stname"))
