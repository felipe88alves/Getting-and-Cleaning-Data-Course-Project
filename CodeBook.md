# *Cleaning and Getting Data* course project code book

### Analysis process

The analysis script, `run_analysis.R` reads in the processed experiment data and performs a number of steps to get it into summary form.

 - All the processed test and training datasets of the measurement files are read in.
 - The processed test and training datasets of the measurement files are merged into one data frame.
 - The data columns are then given names based on the `features.txt` file.
 - Columns that hold mean or standard deviation measurements are selected from the dataset.
 - Subject and activity label data is added to the mean and standard deviation measurements
 - The activity identifiers are replaced with the activity labels based on the `activity_labels.txt` file.
 - The data is then grouped by subject and activity, and the mean is calculated for every measurement column.
 - Finally, the summary dataset is written to a file, `tidyDataset.txt`.

### Columns in output file

The columns included in the output file are listed below:

  - Subject_Id - The id of each of the 30 experiment participants.
  - Activity_Labels - The name of the activity that the measurements corresponds to:
   -- LAYING
   -- SITTING
   -- STANDING
   -- WALKING
   -- WALKING_DOWNSTAIRS
   -- WALKING_UPSTAIRS

All of the following fields represent the mean of recorded data points for the given subject and activity. The detailed description of the different measurement types can be found in the `features_info.txt` file included in the data [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

 - tBodyAcc-mean()-X
 - tBodyAcc-mean()-Y
 - tBodyAcc-mean()-Z
 - tBodyAcc-std()-X
 - tBodyAcc-std()-Y
 - tBodyAcc-std()-Z
 - tGravityAcc-mean()-X
 - tGravityAcc-mean()-Y
 - tGravityAcc-mean()-Z
 - tGravityAcc-std()-X
 - tGravityAcc-std()-Y
 - tGravityAcc-std()-Z
 - tBodyAccJerk-mean()-X
 - tBodyAccJerk-mean()-Y
 - tBodyAccJerk-mean()-Z
 - tBodyAccJerk-std()-X
 - tBodyAccJerk-std()-Y
 - tBodyAccJerk-std()-Z
 - tBodyGyro-mean()-X
 - tBodyGyro-mean()-Y
 - tBodyGyro-mean()-Z
 - tBodyGyro-std()-X
 - tBodyGyro-std()-Y
 - tBodyGyro-std()-Z
 - tBodyGyroJerk-mean()-X
 - tBodyGyroJerk-mean()-Y
 - tBodyGyroJerk-mean()-Z
 - tBodyGyroJerk-std()-X
 - tBodyGyroJerk-std()-Y
 - tBodyGyroJerk-std()-Z
 - tBodyAccMag-mean()
 - tBodyAccMag-std()
 - tGravityAccMag-mean()
 - tGravityAccMag-std()
 - tBodyAccJerkMag-mean()
 - tBodyAccJerkMag-std()
 - tBodyGyroMag-mean()
 - tBodyGyroMag-std()
 - tBodyGyroJerkMag-mean()
 - tBodyGyroJerkMag-std()
 - fBodyAcc-mean()-X
 - fBodyAcc-mean()-Y
 - fBodyAcc-mean()-Z
 - fBodyAcc-std()-X
 - fBodyAcc-std()-Y
 - fBodyAcc-std()-Z
 - fBodyAccJerk-mean()-X
 - fBodyAccJerk-mean()-Y
 - fBodyAccJerk-mean()-Z
 - fBodyAccJerk-std()-X
 - fBodyAccJerk-std()-Y
 - fBodyAccJerk-std()-Z
 - fBodyGyro-mean()-X
 - fBodyGyro-mean()-Y
 - fBodyGyro-mean()-Z
 - fBodyGyro-std()-X
 - fBodyGyro-std()-Y
 - fBodyGyro-std()-Z
 - fBodyAccMag-mean()
 - fBodyAccMag-std()
 - fBodyBodyAccJerkMag-mean()
 - fBodyBodyAccJerkMag-std()
 - fBodyBodyGyroMag-mean()
 - fBodyBodyGyroMag-std()
 - fBodyBodyGyroJerkMag-mean()
 - fBodyBodyGyroJerkMag-std()
### More information

Detailed information on the experiment and the data can be found in the `README.txt` and `features_info.txt` files included in the experiment data [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) or find more information on the dataset [homepage](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
