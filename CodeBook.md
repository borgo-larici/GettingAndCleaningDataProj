# CODEBOOK
### for https://github.com/borgo-larici/GettingAndCleaningDataProj

Modifies and extends CODEBOOK from
"Human Activity Recognition Using Smartphones Dataset"
quoted entirely at the end of this file.

***

### VARIABLES for "tidy_samsung_means.csv"

**note 1:** The name and units for this variable are explained in features_info.txt of the raw "Samsung Data" set.  In "tidy_samsung_means.csv", this variable contains the MEAN of this measurement for the given activity_label and subject.

Variable Name               | Description
---------------------       | -----------
activity_label              | The name of the activity being performed by the subject during this observation. 
subject                     | The subject (person) who performed the activity during this observation
tBodyAcc-mean()-X           | (see note 1)
tBodyAcc-mean()-Y           | (see note 1)
tBodyAcc-mean()-Z           | (see note 1)
tBodyAcc-std()-X            | (see note 1)
tBodyAcc-std()-Y            | (see note 1)
tBodyAcc-std()-Z            | (see note 1)
tGravityAcc-mean()-X        | (see note 1)
tGravityAcc-mean()-Y        | (see note 1)
tGravityAcc-mean()-Z        | (see note 1)
tGravityAcc-std()-X         | (see note 1)
tGravityAcc-std()-Y         | (see note 1)
tGravityAcc-std()-Z         | (see note 1)
tBodyAccJerk-mean()-X       | (see note 1)
tBodyAccJerk-mean()-Y       | (see note 1)
tBodyAccJerk-mean()-Z       | (see note 1)
tBodyAccJerk-std()-X        | (see note 1)
tBodyAccJerk-std()-Y        | (see note 1)
tBodyAccJerk-std()-Z        | (see note 1)
tBodyGyro-mean()-X          | (see note 1)
tBodyGyro-mean()-Y          | (see note 1)
tBodyGyro-mean()-Z          | (see note 1)
tBodyGyro-std()-X           | (see note 1)
tBodyGyro-std()-Y           | (see note 1)
tBodyGyro-std()-Z           | (see note 1)
tBodyGyroJerk-mean()-X      | (see note 1)
tBodyGyroJerk-mean()-Y      | (see note 1)
tBodyGyroJerk-mean()-Z      | (see note 1)
tBodyGyroJerk-std()-X       | (see note 1)
tBodyGyroJerk-std()-Y       | (see note 1)
tBodyGyroJerk-std()-Z       | (see note 1)
tBodyAccMag-mean()          | (see note 1)
tBodyAccMag-std()           | (see note 1)
tGravityAccMag-mean()       | (see note 1)
tGravityAccMag-std()        | (see note 1)
tBodyAccJerkMag-mean()      | (see note 1)
tBodyAccJerkMag-std()       | (see note 1)
tBodyGyroMag-mean()         | (see note 1)
tBodyGyroMag-std()          | (see note 1)
tBodyGyroJerkMag-mean()     | (see note 1)
tBodyGyroJerkMag-std()      | (see note 1)
fBodyAcc-mean()-X           | (see note 1)
fBodyAcc-mean()-Y           | (see note 1)
fBodyAcc-mean()-Z           | (see note 1)
fBodyAcc-std()-X            | (see note 1)
fBodyAcc-std()-Y            | (see note 1)
fBodyAcc-std()-Z            | (see note 1)
fBodyAccJerk-mean()-X       | (see note 1)
fBodyAccJerk-mean()-Y       | (see note 1)
fBodyAccJerk-mean()-Z       | (see note 1)
fBodyAccJerk-std()-X        | (see note 1)
fBodyAccJerk-std()-Y        | (see note 1)
fBodyAccJerk-std()-Z        | (see note 1)
fBodyGyro-mean()-X          | (see note 1)
fBodyGyro-mean()-Y          | (see note 1)
fBodyGyro-mean()-Z          | (see note 1)
fBodyGyro-std()-X           | (see note 1)
fBodyGyro-std()-Y           | (see note 1)
fBodyGyro-std()-Z           | (see note 1)
fBodyAccMag-mean()          | (see note 1)
fBodyAccMag-std()           | (see note 1)
fBodyBodyAccJerkMag-mean()  | (see note 1)
fBodyBodyAccJerkMag-std()   | (see note 1)
fBodyBodyGyroMag-mean()     | (see note 1)
fBodyBodyGyroMag-std()      | (see note 1)
fBodyBodyGyroJerkMag-mean() | (see note 1)
fBodyBodyGyroJerkMag-std()  | (see note 1)
















***
QUOTED CODEBOOK:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
