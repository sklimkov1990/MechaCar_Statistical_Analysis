library(dplyr)

#read in MechaCar mpg data
mechacar_table <- read.csv('./Resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

#linear regression
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))

# read in suspension coil data
suspension_coil <- read.csv('./Resources/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#total_summary data frame
total_summary = suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary

# lot summary data frame
lot_summary = suspension_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary

# t test for PSI across all manufacturing lots
t.test(suspension_coil$PSI, mu = 1500)

# t test for PSI for each manufacturing lots
# lot1
lot1data = subset(suspension_coil, suspension_coil$Manufacturing_Lot == "Lot1")
t.test(lot1data$PSI, mu = 1500)

# lot2
lot2data = subset(suspension_coil, suspension_coil$Manufacturing_Lot == "Lot2")
t.test(lot2data$PSI, mu = 1500)

# lot3
lot3data = subset(suspension_coil, suspension_coil$Manufacturing_Lot == "Lot3")
t.test(lot3data$PSI, mu = 1500)
