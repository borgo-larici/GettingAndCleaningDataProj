# FILE: run_analysis.R
# CREATED BY: https://github.com/borgo-larici
# CREATED ON: 2020-03-22

# PURPOSE:
# Turn "Samsung Data" into a tidy data set
# Output a file called "tidy_samsung.csv"
# Create a 2nd tidy data set from the 1st, averaging by activity and subject.
# Output this as "tidy_samsung_means.csv"

# Tested using R.version:
# platform       x86_64-w64-mingw32          
# arch           x86_64                      
# os             mingw32                     
# system         x86_64, mingw32             
# status                                     
# major          3                           
# minor          6.2                         
# year           2019                        
# month          12                          
# day            12                          
# svn rev        77560                       
# language       R                           
# version.string R version 3.6.2 (2019-12-12)
# nickname       Dark and Stormy Night 


# PREREQUISITIES: "Samsung Data" must be in your working directory.
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# Uncomment lines below if you need to download this file to your working dir.
# download.file(
#   "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
#   "getdata_projectfiles_UCI HAR Dataset.zip"
# )

###############################
# Unzip data
unzip("getdata_projectfiles_UCI HAR Dataset.zip")

###############################
# Set up activity_labels.
# This file correlates the human-readable activity label (e.g. "WALKING")
# with the activity ID number used elsewhere in the fileset.
# 
# Read file as " "-delimited into activity_labels.
activity_labels <- read.delim(
        file = "UCI HAR Dataset\\activity_labels.txt",
        header = FALSE,
        sep = " ",
        col.names = c("index", "activity_label")
)

###############################
# Set up "features".
# This file correlates the names of the 561 different measurements to their
# respective index numbers used elsewhere in the fileset.
#
# Read file as delimited into "features"
features <- read.delim(
        file = "UCI HAR Dataset\\features.txt",
        header = FALSE,
        sep = " ",
        col.names = c("index", "feature")
)
#
# We are going to be interested in the features with values containing "mean()"
# or "std()".  Make a vector indicating which features have such values.
features.stdmean <-
  which(grepl(".*(mean\\(\\)|std\\(\\)).*", as.character(features$feature)))

###############################
# Set up "subject_test".
# This file shows which subject (i.e., volunteer who participated in testing)
# generated which lines of data in X_test.txt file.
#
# Read file as delimited into "subject_test".  Note we are expecting
# only a single column of data in the file.
subject_test <- read.delim(
        file = "UCI HAR Dataset\\test\\subject_test.txt",
        header = FALSE,
        sep = " ",
        col.names = c("subject")
)

###############################
# Set up "subject_train".
# This file shows which subject (i.e., volunteer who participated in testing)
# generated which lines of data in X_train.txt file.
#
# Read file as delimited into "subject_train".  Note we are expecting
# only a single column of data in the file.
subject_train <- read.delim(
        file = "UCI HAR Dataset\\train\\subject_train.txt",
        header = FALSE,
        sep = " ",
        col.names = c("subject")
)

###############################
# Set up "y_test_activity".
# This file shows which activity (i.e., WALKING)
# generated which lines of data in X_test.txt file.
#
# Read file as delimited into "y_test_activity".  Note we are expecting
# only a single column of data in the file.
y_test_activity <- read.delim(
        file = "UCI HAR Dataset\\test\\y_test.txt",
        header = FALSE,
        sep = " ",
        col.names = c("activity")
)

###############################
# Set up "y_train_activity".
# This file shows which activity (i.e., WALKING)
# generated which lines of data in X_train.txt file.
#
# Read file as delimited into "y_train_activity".  Note we are expecting
# only a single column of data in the file.
y_train_activity <- read.delim(
        file = "UCI HAR Dataset\\train\\y_train.txt",
        header = FALSE,
        sep = " ",
        col.names = c("activity")
)

###############################
# Set up "x_test_data".
# This is one of two files containing the measurements we want to merge.
#
# Read file as fixed-width into "x_test_data".  Expecting 561 fixed-width
# columns of 16 characters.
x_test_data <- read.fwf(
        file = "UCI HAR Dataset\\test\\X_test.txt",
        widths = rep(16, 561),
        header = FALSE
)
# Set column names using features dataframe
colnames(x_test_data) <- as.character(features$feature)
#
# We are only interested in the measurements involving mean and standard dev.
# Discard all variables except those whose names include "mean()" and "std()"
# Use features.stdmean which was constructed above.
x_test_data <- x_test_data[,features.stdmean]


###############################
# Set up "x_train_data".
# This is the second of two files containing the measurements we want to merge.
#
# Read file as fixed-width into "x_train_data".  Expecting 561 fixed-width
# columns of 16 characters.
x_train_data <- read.fwf(
  file = "UCI HAR Dataset\\train\\X_train.txt",
  widths = rep(16, 561),
  header = FALSE
)
# Set column names using features dataframe
colnames(x_train_data) <- as.character(features$feature)
#
# We are only interested in the measurements involving mean and standard dev.
# Discard all variables except those whose names include "mean()" and "std()"
# Use features.stdmean which was constructed above.
x_train_data <- x_train_data[,features.stdmean]


###############################
# MERGE DATA
#
# Combine subject, activity and data (1 of 2)
train_combine <- cbind(subject_train, y_train_activity, x_train_data)
# Remove objects to save memory
rm(list = c("subject_train","y_train_activity","x_train_data"))
#
# Combine subject, activity and data (2 of 2)
test_combine <- cbind(subject_test, y_test_activity, x_test_data)
# Remove objects to save memory
rm(list = c("subject_test", "y_test_activity", "x_test_data"))
#
# Combine sets 1 and 2
all_data <- rbind(train_combine, test_combine)
# Remove objects to save memory
rm(list = c("train_combine", "test_combine"))


################################
# We now have a merged data set but the value for "activity" variable is
# an integer.  We want to replace that with the corresponding activity
# label from activity_labels.  Use "merge" command for this, then discard
# the variable containing the integer.
all_data <- 
  merge(activity_labels, all_data, by.x = "index", by.y = "activity")
# Discard first variable
all_data <- all_data[2:length(all_data)]


################################
# CREATE A DATA SET CONTAINING
# the AVERAGE OF EACH VARIABLE
# BY ACTIVITY AND SUBJECT
################################

# Make all_data into a tibble
library(dplyr)
all_data_tbl <- tbl_df(all_data)

# Remove object to save memory
rm(all_data)

# Group this tibble by activity and subject
all_data_tbl <- group_by(all_data_tbl, activity_label, subject)

# Summarize -- get the mean of every column
all_data_tbl_summ <- summarize_all(all_data_tbl, mean)

# OUTPUT THIS TIDY DATA AS "tidy_samsung_means.csv"
write.table(all_data_tbl_summ,
            file = "tidy_samsung_means.csv",
            sep = ",",
            row.names = FALSE
)
