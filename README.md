# Final Project for course "Getting and Cleaning Data"

### Steps followed to produce output dataset "tidy_samsung_means.csv"

1. Raw data ("Samsung Data") was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
2. The data contains 10,299 observations, each consisting of 561 measurements and 2 factors.
3. The raw data was spread across multiple files--measurements were in two different files and factors were separate from measurements.
4. Each observation was associated with a particular "activity_label" (walking, laying, etc.) and a particular "subject" (human volunteer).
5. Therefore the data consisted of 10,299 observations of 563 variables (561 measurements and 2 factors).
6. We discarded all measurement variables except those whose names contain either "mean()" or "std()".  This resulted in 66 measurement variables plus 2 factors.
7. We assembled the remaining 66 measurement variables plus 2 factors into a tibble.
8. We grouped this tibble by the 2 factors, activity_label and subject.
9. We calculated the mean of all 66 measurement variables for each combination of factors.
10. There were 6 levels in the activity_label factor and 30 levels in the subject factor, resulting in 6 X 30 = 180 observations in the output dataset.
11. For the variable names in the output dataset, we reused without modification the variable name of the underlying raw data.
12. We outputted the dataset to "tidy_samsung_means.csv"
13. The script run_analysis.R performs all the steps described above.  Script assumes the raw, unzipped data exists in the working directory.
