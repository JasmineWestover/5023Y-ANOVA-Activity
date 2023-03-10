#___________________________----

# SET UP OF SCRIPT ---
# An analysis of the development time of frogspawn in response to water temperature (from three independent groups- 13°C, 18°C and 25°C). 

# INSTALL PACKAGES  ----
library(tidyverse)
library(here)

# IMPORT DATA ----

frogs <- read_csv(here("data","frogs_messy_data.csv"))  # don't even necessarily need the here function or package 
#___________________________----

# BACKGROUND OF EXPERIMENT ----

# The data above is an example of a manipulative experiment - as the temperature was changed so we are able to study the effect of this change on the frogspawn development. 
# The frogspawn was collected from a pond in the Italian Alps, and once brought back to the lab, they were divided into 60 water containers:
  # 20 of the containers' water temperature was kept to 13°C
  # 20 containers were kept to 18°C.
  # The remaining 20 containers were kept to 25°C.
# The high number of replicates increases out confidence that the expected difference between groups is due to the temperature of the water that the frogspawn resides in. 

# The water containers were monitored and the hatching times (days until hatching of eggs) were recorded. 
  # The response variable is Hatching_time
  # The Explanatory (independent) variable is Temperature, with 3 levels: 13°C, 18°C and 25°C.

# We want to compare the means of 3 independent groups (13°C, 18°C and 25°C temperature groups) and we have one continuous response variable (hatching time in days) and one categorical explanatory variable (temperature). 
    # One-way ANOVA would be the appropriate analysis. 

#___________________________----


# HYPOTHESIS ----
# Before the analysis of the data starts, a hypothesis and a prediction should be made. 
# Frogspawn takes around 2-3 weeks to hatch under optimal temperatures (15-20°C), can hypothesize that the lower the temperature, the longer it will take for frogspawn to hatch. Based on our temperature range can predict that at the highest temperature (25°C) hatching time will be reduced.
## Hypothesis = mean frogspawn hatching time will vary with temperature level ----

#___________________________----

# TIDY DATA ----
glimpse(frogs)
frogs <- janitor::clean_names(frogs)
summary(frogs)
# the data is not in a tidy format so need to 'manipulate' but NOT change the data so it is in a tidy format. 
# need to remove the unavailable values (na)
# Potentially change the variable names 
# Need to pivot the data, as currently in a wide format but we want it in a long format, where every row is a unique observation and the columns are the variables (temperature & days hatching)
  # Once the data is pivoted into a long format it would be tidy. 

