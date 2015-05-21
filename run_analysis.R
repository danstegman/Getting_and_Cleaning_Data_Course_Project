## Getting and Cleaning Data Course Project Script
## Dan Stegman
## Started: 5/20/2015

## import training data files
        #x_train <- read.table("./UCI_HAR_Dataset/train/X_train.txt")
        #y_train <- read.table("./UCI_HAR_Dataset/train/y_train.txt")
        #subject_train <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")

## import test data files
        #x_test <- read.table("./UCI_HAR_Dataset/test/X_test.txt")
        #y_test <- read.table("./UCI_HAR_Dataset/test/y_test.txt")
        #subject_test <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")
## 1. Merges the training and the test sets to create one data set.
    ## combine x, y, and subject data tables (train and test)
        x_data <- rbind(x_train,x_test)
        y_data <- rbind(y_train,y_test)
        subject_data <- rbind(subject_train, subject_test)
## 3. Uses descriptive activity names to name the activities in the data set
## Makes more sense to do it now as I can create a separate data table for it
        rec_count <- nrow(y_data)
        y_tidy_list <- list()
        for (i in 1:rec_count) {
            if (y_data[i,1] == 1) {
                y_tidy_list[[i]] <- "Walking"
            } else if (y_data[i,1] == 2) {
                y_tidy_list[[i]] <- "Walking upstairs"
            } else if (y_data[i,1] == 3) {
                y_tidy_list[[i]] <- "Walking downstairs"
            } else if (y_data[i,1] == 4) {
                y_tidy_list[[i]] <- "Sitting"
            } else if (y_data[i,1] == 5) {
                y_tidy_list[[i]] <- "Standing"
            } else {
                y_tidy_list[[i]] <- "Laying"
            }
        }
        y_tidy_data <- as.data.frame(do.call("rbind",y_tidy_list))

        ## combine all 3 combined data tables into one large table
        total_data <- cbind(subject_data, y_tidy_data, x_data)

## 2. Extracts only the measurements on the mean and standard deviation for
##    each measurement.
    ## NOTE THAT THE COLUMNS ARE OFF BY TWO DUE TO THE COLUMN BINDING WITH
    ## SUBJECT AND ACTIVITY TABLES
    ## Keep columns
    ##        1 (subject)
    ##        2 (activity)
    ##        3-5 (tBodyAcc-mean x/y/z)
    ##        6-8 (tBodyAcc-std x/y/z)
    ##        43-45 (tGravity-mean x/y/z)
    ##        46-48 (tGravity-std x/y/z)
    ##        83-85 (tBodyAccJerk-mean x/y/z)
    ##        86-88 (tBodyAccJerk-std x/y/z)
    ##        123-125 (tBodyGyro-mean x/y/z)
    ##        126-128 (tBodyGyro-std x/y/z)
    ##        163-165 (tBodyGyroJerk-mean x/y/z)
    ##        166-168 (tBodyGyroJerk-std x/y/z)
    ##        203 (tBodyAccMag-mean)
    ##        204 (tBodyAccMag-std)
    ##        216 (tGravityAccMag-mean)
    ##        217 (tGravityAccMag-std)
    ##        229 (tBodyAccJerkMag-mean)
    ##        230 (tBodyAccJerkMag-std)
    ##        242 (tBodyGyroMag-mean)
    ##        243 (tBodyGyroMag-std)
    ##        255 (tBodyGyroJerkMag-mean)
    ##        256 (tBodyGyroJerkMag-std)
    ##        268-270 (fBodyAcc-mean x/y/z)
    ##        271-273 (fBodyAcc-std x/y/z)
    ##        347-349 (fBodyAccJerk-mean x/y/z)
    ##        350-352 (fBodyAccJerk-std x/y/z)
    ##        426-428 (fBodyGyro-mean x/y/z)
    ##        429-431 (fBodyGyro-std x/y/z)
    ##        505 (fBodyAccMag-mean)
    ##        506 (fBodyAccMag-std)
    ##        531 (fBodyBodyGyroMag-mean)
    ##        532 (fBodyBodyGyroMag-std)
    ##        544 (fBodyBodyGyroJerkMag-mean)
    ##        545 (fBodyBodyGyroJerkMag-std)

    kept_data <- cbind(total_data[,1:8],
                   total_data[,43:48],
                   total_data[,83:88],
                   total_data[,123:128],
                   total_data[,163:168],
                   total_data[,203:204],
                   total_data[,216:217],
                   total_data[,229:230],
                   total_data[,242:243],
                   total_data[,255:256],
                   total_data[,268:273],
                   total_data[,347:352],
                   total_data[,426:431],
                   total_data[,505:506],
                   total_data[,531:532],
                   total_data[,544:545])

## 3. was applied earlier
        
## 4. Appropriately labels the data set with descriptive variable names. 
colnames(kept_data) <- c("Subject",
                         "Activity",
                         
                         "tBodyAcc_mean_X","tBodyAcc_mean_Y","tBodyAcc_mean_Z",
                         "tBodyAcc_std_X","tBodyAcc_std_Y","tBodyAcc_std_Z",
                         
                         "tGravity_mean_X","tGravity_mean_Y","tGravity_mean_Z",
                         "tGravity_std_X","tGravity_std_Y","tGravity_std_Z",
                         
                         "tBodyAccJerk_mean_X","tBodyAccJerk_mean_Y","tBodyAccJerk_mean_Z",
                         "tBodyAccJerk_std_X","tBodyAccJerk_std_Y","tBodyAccJerk_std_Z",
                         
                         "tBodyGyro_mean_X","tBodyGyro_mean_Y","tBodyGyro_mean_Z",
                         "tBodyGyro_std_X","tBodyGyro_std_Y","tBodyGyro_std_Z",
                         
                         "tBodyGyroJerk_mean_X","tBodyGyroJerk_mean_Y","tBodyGyroJerk_mean_Z",
                         "tBodyGyroJerk_std_X","tBodyGyroJerk_std_Y","tBodyGyroJerk_std_Z",
                         
                         "tBodyAccMag_mean",
                         "tBodyAccMag_std",
                         
                         "tGravityAccMag_mean",
                         "tGravityAccMag_std",
                         
                         "tBodyAccJerkMag_mean",
                         "tBodyAccJerkMag_std",
                         
                         "tBodyGyroMag_mean",
                         "tBodyGyroMag_std",
                         
                         "tBodyGyroJerkMag_mean",
                         "tBodyGyroJerkMag_std",
                         
                         "fBodyAcc_mean_X","fBodyAcc_mean_Y","fBodyAcc_mean_Z",
                         "fBodyAcc_std_X","fBodyAcc_std_Y","fBodyAcc_std_Z",
                         
                         "fBodyAccJerk_mean_X","fBodyAccJerk_mean_Y","fBodyAccJerk_mean_Z",
                         "fBodyAccJerk_std_X","fBodyAccJerk_std_Y","fBodyAccJerk_std_Z",
                         
                         "fBodyGyro_mean_X","fBodyGyro_mean_Y","fBodyGyro_mean_Z",
                         "fBodyGyro_std_X","fBodyGyro_std_Y","fBodyGyro_std_Z",
                         
                         "fBodyAccMag_mean",
                         "fBodyAccMag_std",
                         
                         "fBodyBodyGyroMag_mean",
                         "fBodyBodyGyroMag_std",
                         
                         "fBodyBodyGyroJerkMag_mean",
                         "fBodyBodyGyroJerkMag_std"
)

## 5. From the data set in step 4, creates a second, independent tidy data set
##    with the average of each variable for each activity and each subject.
library(plyr)
tidy_data <- ddply(kept_data, .(Subject,Activity), colwise(mean))
write.table(tidy_data, "tidyDataProject.txt", sep=",",row.names=FALSE)