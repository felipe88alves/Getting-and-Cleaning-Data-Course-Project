library(dplyr)

# Exercise 1 - Merges the training and the test sets to create one data set.

## read in the training data
train_subject<- read.table(file = "train/subject_train.txt", sep="",header = FALSE)
train_X<- read.table(file = "train/X_train.txt", sep="",header = FALSE)
train_Y<- read.table(file = "train/Y_train.txt", sep="",header = FALSE)

## read in the test data
test_subject<- read.table(file = "test/subject_test.txt", sep="", header = FALSE)
test_X<- read.table(file = "test/X_test.txt", sep="",header = FALSE)
test_Y<- read.table(file = "test/Y_test.txt", sep="",header = FALSE)

## Merge training and test datasets for measurements
measurement_df <- rbind(train_X,test_X)

# Exercise 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
## Read in the features
feature_list <- read.table("features.txt",header=FALSE)

## Read in Feature Labels
featureNames <- as.character(feature_list[,2])

## Update the Header labels
names(measurement_df) <- c(featureNames)

## Update the Headers with mean() or std() identifiers
headerIndex_MeanAndStd <- grepl("mean()",names(measurement_df),fixed=TRUE)|grepl("std()",names(measurement_df),fixed=TRUE)

## Extracts only the measurements on the mean and standard deviation for each measurement.
meanAndStandard_Dataset <- measurement_df[,headerIndex_MeanAndStd]

# Exercise 3 - Uses descriptive activity names to name the activities in the data set
# Exercise 4 - Appropriately labels the data set with descriptive variable names.

## Combine Subject Test and Activity Label
subjectIndex <- rbind(train_subject,test_subject)
ActivityIndex <- rbind(train_Y,test_Y)

## Combine Label Index Data with Measurement Data
labeledData <- cbind(subjectIndex, ActivityIndex, meanAndStandard_Dataset)

## Update Headers
names(labeledData)[c(1,2)] <- c("Subject_Id","Activity_Labels")

## Read in the Activity Names
activity_labels <- read.table("activity_labels.txt",header=FALSE)

## Match Activity Label indexes to extract Activity Label Name
labeledData$Activity_Labels <- activity_labels[match(labeledData$Activity_Labels, activity_labels$V1), 'V2']

# Exercise 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_labeledData2 <- labeledData %>%
        group_by(Subject_Id, Activity_Labels) %>%
        summarise_all(funs(mean))

## Export tidy Dataset
write.table(tidy_labeledData,"tidyDataset.txt",row.name=FALSE)

