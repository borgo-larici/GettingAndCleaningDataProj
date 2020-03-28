# CODEBOOK
### for https://github.com/borgo-larici/GettingAndCleaningDataProj

Modifies and extends CODEBOOK from
"Human Activity Recognition Using Smartphones Dataset"
quoted entirely at the end of this file.

***

### VARIABLES for "tidy_samsung_means.csv":

Variable Name               | Description
---------------------       | -----------
activity_label              | The name of the activity being performed by the subject during this observation. 
subject                     | The subject (person) who performed the activity during this observation
tBodyAcc-mean()-X           | Mean of like-named variable for this activity_label and subject.
tBodyAcc-mean()-Y           | Mean of like-named variable for this activity_label and subject.
tBodyAcc-mean()-Z           | Mean of like-named variable for this activity_label and subject.
tBodyAcc-std()-X            | Mean of like-named variable for this activity_label and subject.
tBodyAcc-std()-Y            | Mean of like-named variable for this activity_label and subject.
tBodyAcc-std()-Z            | Mean of like-named variable for this activity_label and subject.
tGravityAcc-mean()-X        | Mean of like-named variable for this activity_label and subject.
tGravityAcc-mean()-Y        | Mean of like-named variable for this activity_label and subject.
tGravityAcc-mean()-Z        | Mean of like-named variable for this activity_label and subject.
tGravityAcc-std()-X         | Mean of like-named variable for this activity_label and subject.
tGravityAcc-std()-Y         | Mean of like-named variable for this activity_label and subject.
tGravityAcc-std()-Z         | Mean of like-named variable for this activity_label and subject.
tBodyAccJerk-mean()-X       | Mean of like-named variable for this activity_label and subject.
tBodyAccJerk-mean()-Y       | Mean of like-named variable for this activity_label and subject.
tBodyAccJerk-mean()-Z       | Mean of like-named variable for this activity_label and subject.
tBodyAccJerk-std()-X        | Mean of like-named variable for this activity_label and subject.
tBodyAccJerk-std()-Y        | Mean of like-named variable for this activity_label and subject.
tBodyAccJerk-std()-Z        | Mean of like-named variable for this activity_label and subject.
tBodyGyro-mean()-X          | Mean of like-named variable for this activity_label and subject.
tBodyGyro-mean()-Y          | Mean of like-named variable for this activity_label and subject.
tBodyGyro-mean()-Z          | Mean of like-named variable for this activity_label and subject.
tBodyGyro-std()-X           | Mean of like-named variable for this activity_label and subject.
tBodyGyro-std()-Y           | Mean of like-named variable for this activity_label and subject.
tBodyGyro-std()-Z           | Mean of like-named variable for this activity_label and subject.
tBodyGyroJerk-mean()-X      | Mean of like-named variable for this activity_label and subject.
tBodyGyroJerk-mean()-Y      | Mean of like-named variable for this activity_label and subject.
tBodyGyroJerk-mean()-Z      | Mean of like-named variable for this activity_label and subject.
tBodyGyroJerk-std()-X       | Mean of like-named variable for this activity_label and subject.
tBodyGyroJerk-std()-Y       | Mean of like-named variable for this activity_label and subject.
tBodyGyroJerk-std()-Z       | Mean of like-named variable for this activity_label and subject.
tBodyAccMag-mean()          | Mean of like-named variable for this activity_label and subject.
tBodyAccMag-std()           | Mean of like-named variable for this activity_label and subject.
tGravityAccMag-mean()       | Mean of like-named variable for this activity_label and subject.
tGravityAccMag-std()        | Mean of like-named variable for this activity_label and subject.
tBodyAccJerkMag-mean()      | Mean of like-named variable for this activity_label and subject.
tBodyAccJerkMag-std()       | Mean of like-named variable for this activity_label and subject.
tBodyGyroMag-mean()         | Mean of like-named variable for this activity_label and subject.
tBodyGyroMag-std()          | Mean of like-named variable for this activity_label and subject.
tBodyGyroJerkMag-mean()     | Mean of like-named variable for this activity_label and subject.
tBodyGyroJerkMag-std()      | Mean of like-named variable for this activity_label and subject.
fBodyAcc-mean()-X           | Mean of like-named variable for this activity_label and subject.
fBodyAcc-mean()-Y           | Mean of like-named variable for this activity_label and subject.
fBodyAcc-mean()-Z           | Mean of like-named variable for this activity_label and subject.
fBodyAcc-std()-X            | Mean of like-named variable for this activity_label and subject.
fBodyAcc-std()-Y            | Mean of like-named variable for this activity_label and subject.
fBodyAcc-std()-Z            | Mean of like-named variable for this activity_label and subject.
fBodyAccJerk-mean()-X       | Mean of like-named variable for this activity_label and subject.
fBodyAccJerk-mean()-Y       | Mean of like-named variable for this activity_label and subject.
fBodyAccJerk-mean()-Z       | Mean of like-named variable for this activity_label and subject.
fBodyAccJerk-std()-X        | Mean of like-named variable for this activity_label and subject.
fBodyAccJerk-std()-Y        | Mean of like-named variable for this activity_label and subject.
fBodyAccJerk-std()-Z        | Mean of like-named variable for this activity_label and subject.
fBodyGyro-mean()-X          | Mean of like-named variable for this activity_label and subject.
fBodyGyro-mean()-Y          | Mean of like-named variable for this activity_label and subject.
fBodyGyro-mean()-Z          | Mean of like-named variable for this activity_label and subject.
fBodyGyro-std()-X           | Mean of like-named variable for this activity_label and subject.
fBodyGyro-std()-Y           | Mean of like-named variable for this activity_label and subject.
fBodyGyro-std()-Z           | Mean of like-named variable for this activity_label and subject.
fBodyAccMag-mean()          | Mean of like-named variable for this activity_label and subject.
fBodyAccMag-std()           | Mean of like-named variable for this activity_label and subject.
fBodyBodyAccJerkMag-mean()  | Mean of like-named variable for this activity_label and subject.
fBodyBodyAccJerkMag-std()   | Mean of like-named variable for this activity_label and subject.
fBodyBodyGyroMag-mean()     | Mean of like-named variable for this activity_label and subject.
fBodyBodyGyroMag-std()      | Mean of like-named variable for this activity_label and subject.
fBodyBodyGyroJerkMag-mean() | Mean of like-named variable for this activity_label and subject.
fBodyBodyGyroJerkMag-std()  | Mean of like-named variable for this activity_label and subject.
















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
