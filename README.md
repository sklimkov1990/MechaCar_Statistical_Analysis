# MechaCar_Statistical_Analysis

## Overview
Statistical analysis of the MechaCar dataset is done using multiple linear regression to identify the variables in the dataset that predict the mpg of MechaCar prototypes.

Data analytics will be done on the following:
  - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
  - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
  - Run t-tests to determine if the manufacturing lots are statistically different from the mean population
  - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 
  
A summary interpretation of the findings for each statistical analysis is shown below.

## Resources
- Data: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: R 

## Testing Hypotheses
  linear regression tests the following hypotheses:
   - H0 : The slope of the linear model is zero, or m = 0
   - Ha : The slope of the linear model is not zero, or m ≠ 0

## Linear Regression to Predict

  - Linear Regression coefficients:
  !["Coefficients"](./Images/linear_regression_coefs.png "linear regression coefficents")
  
  - Linear Regression Summary
  !["Summary"](./Images/linear_regression_summary.png "linear regression summary")
  
  
  - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - Intercept, vehicle_length, and ground_clearance provide significance variance to the mpg values in the dataset. 
    - Also vehicle_weight might provide some significance.
	
  - Is the slope of the linear model considered to be zero? Why or why not?
    - Slope is not considered zero. Since null hypothesis H0 is rejected.
    - Null hypothesis is rejected because of 3 variables showing significance variance to mpg values in the dataset.
	
  - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - This model shows that Intercept is very significant, so it will not predict mpg effectively.
    - This model tells us there might be variables that are not in our dataset that need to be collected and observed.

## Summary Statistics on Suspension
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

  - Based on the analysis on the current data on suspension coils we see that the overall design specifications are met as the variance of PSI is 76.23459, which is less than the 100.
    - !["total_summary"](./Images/suspension_coil_total_summary.png "Total summary for PSI")
    
    
  - However variance by lots show that lot 1 and lot 2 are well within the limit and lot 3 is not.
    - !["summary by lot"](./Images/suspension_coil_lot_summary.png "Summary for PSI by lot")
    
    
## T-Tests on Suspension Coils
### Overall statistics for suspension coils using t-test show similar results as the summarize() function used above
  - !["Total t-test summary"](./Images/suspension_coil_total_ttest.png "total t-test summary")
  
### Individual statistics for suspension coils show similar results as the summarize() function
#### lot1 statistics
  - !["Lot1 t-test summary"](./Images/suspension_coil_lot1_ttest.png "lot 1 t-test summary")
  
  
#### lot2 statistics
  - !["Lot2 t-test summary"](./Images/suspension_coil_lot2_ttest.png "lot 2 t-test summary")
  
  
#### lot3 statistics
  - !["Lot3 t-test summary"](./Images/suspension_coil_lot3_ttest.png "lot 3 t-test summary")
  
### Summary for t-tests
Based on the above information shown we can conclude the t-test show that the variance for overall lot is within the 100 pounds per square inch. However individual lot summary shows that lot1 and lot2 are well within the limit but lot3 is way outside the limit of 100 PSI.

## Study Design: MechaCar vs Competition
Based on the current data analysis for MechaCar we can show that the significant data points for mpg are vehicle_length, and ground_clearance. Since the intercept is also significant, we know that we are missing few other data points that are not collected at this time. 
We could remove the data points AWD, spoler_angle, and ground_clearance and might want to keep vehicle_weight for calculating mpg multiple variable linear regression. 
We might also split mpg into mpg_city and mpg_highway to show the values to compare with other similar competiton cars in market.
Some of the new data points to collect that might affect mpg are as follows, horse power, and cylinders. 

- Null hypothesis and alternate hypothesis for mpg analysis we should use the slope of the linear model.
- Null hypothesis and alternate hypothesis for safety rating and maintenance cost should use a predetermined industry standard.

Individual analysis on the safety rating and maintenance cost using t-test would show how reliable MachaCar model is compared to the competetion.

We should use Multi variable linear regression tests for significance analysis of mpg_city and mpg_highway. Also use t-test/summarize tests to determine how maintenance cost and safety rating of MechaCar are better than the competetion.
