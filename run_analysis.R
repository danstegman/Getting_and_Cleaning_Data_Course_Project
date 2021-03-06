## Getting and Cleaning Data Course Project Script
## Dan Stegman
## Started: 5/20/2015

## import training data files
        x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
        y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
        subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## import test data files
        x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
        y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
        subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
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
    ## NOTE THAT THE COLUMNS FROM X_Test & X_Train ARE OFF BY TWO DUE TO THE
    ## COLUMN BINDING WITH SUBJECT AND ACTIVITY TABLES
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
                   total_data[,505:506])

## 3. Uses descriptive activity names to name the activities in the data set
##    was applied earlier
        
## 4. Appropriately labels the data set with descriptive variable names. 
colnames(kept_data) <- c("Subject",
                         "Activity",
                         
                         "Mean Body Acceleration X-axis as related to time",
                         "Mean Body Acceleration Y-axis as related to time",
                         "Mean Body Acceleration Z-axis as related to time",
                         "Standard Deviation Acceleration X-axis as related to time",
                         "Standard Deviation Acceleration Y-axis as related to time",
                         "Standard Deviation Acceleration Z-axis as related to time",
                         
                         "Mean Gravity X-axis as related to time",
                         "Mean Gravity Y-axis as related to time",
                         "Mean Gravity Z-axis as related to time",
                         "Standard Deviation Gravity X-axis as related to time",
                         "Standard Deviation Gravity Y-axis as related to time",
                         "Standard Deviation Gravity Z-axis as related to time",
                         
                         "Mean Body Derivative of Acceleration X-axis as related to time",
                         "Mean Body Derivative of Acceleration Y-axis as related to time",
                         "Mean Body Derivative of Acceleration Z-axis as related to time",
                         "Standard Deviation Body Derivative of Acceleration X-axis as related to time",
                         "Standard Deviation Body Derivative of Acceleration Y-axis as related to time",
                         "Standard Deviation Body Derivative of Acceleration Z-axis as related to time",
                         
                         "Mean Body Angular Acceleration X-axis as related to time",
                         "Mean Body Angular Acceleration Y-axis as related to time",
                         "Mean Body Angular Acceleration Z-axis as related to time",
                         "Standard Deviation Body Angular Acceleration X-axis as related to time",
                         "Standard Deviation Body Angular Acceleration Y-axis as related to time",
                         "Standard Deviation Body Angular Acceleration Z-axis as related to time",
                         
                         "Mean Body Derivative of Angular Acceleration X-axis as related to time",
                         "Mean Body Derivative of Angular Acceleration Y-axis as related to time",
                         "Mean Body Derivative of Angular Acceleration Z-axis as related to time",
                         "Standard Deviation Body Derivative of Angular Acceleration X-axis as related to time",
                         "Standard Deviation Body Derivative of Angular Acceleration Y-axis as related to time",
                         "Standard Deviation Body Derivative of Angular Acceleration Z-axis as related to time",
                         
                         "Mean Body Accelearation Magnitude as related to time",
                         "Standard Deviation Body Accelearation Magnitude as related to time",
                         
                         "Mean Gravity Acceleration Magnitude as related to time",
                         "Standard Deviation Gravity Acceleration Magnitude as related to time",
                         
                         "Mean Body Derivative of Acceleration Magnitude as related to time",
                         "Standard Deviation Body Derivative of Acceleration Magnitude as related to time",
                         
                         "Mean Body Angular Acceleration Magnitude as related to time",
                         "Standard Deviation Body Angular Acceleration Magnitude as related to time",
                         
                         "Mean Body Derivative of Angular Acceleration Magnitude as related to time",
                         "Standard Deviation Body Derivative of Angular Acceleration Magnitude as related to time",
                         
                         "Mean Frequency Domain Signal of Body Acceleration X-axis",
                         "Mean Frequency Domain Signal of Body Acceleration Y-axis",
                         "Mean Frequency Domain Signal of Body Acceleration Z-axis",
                         "Standard Deviation Frequency Domain Signal of Body Acceleration X-axis",
                         "Standard Deviation Frequency Domain Signal of Body Acceleration Y-axis",
                         "Standard Deviation Frequency Domain Signal of Body Acceleration Z-axis",
                         
                         "Mean Frequency Domain Signal of Derivative of Body Angular Acceleration X-axis",
                         "Mean Frequency Domain Signal of Derivative of Body Angular Acceleration Y-axis",
                         "Mean Frequency Domain Signal of Derivative of Body Angular Acceleration Z-axis",
                         "Standard Deviation Frequency Domain Signal of Derivative of Body Angular Acceleration X-axis",
                         "Standard Deviation Frequency Domain Signal of Derivative of Body Angular Acceleration Y-axis",
                         "Standard Deviation Frequency Domain Signal of Derivative of Body Angular Acceleration Z-axis",
                         
                         "Mean Frequency Domain Signal of Body Angular Acceleration X-axis",
                         "Mean Frequency Domain Signal of Body Angular Acceleration Y-axis",
                         "Mean Frequency Domain Signal of Body Angular Acceleration Z-axis",
                         "Standard Deviation Frequency Domain Signal of Body Angular Acceleration X-axis",
                         "Standard Deviation Frequency Domain Signal of Body Angular Acceleration Y-axis",
                         "Standard Deviation Frequency Domain Signal of Body Angular Acceleration Z-axis",
                         
                         "Mean Frequency Domain Signal of Body Acceleration Magnitude",
                         "Standard Deviation Frequency Domain Signal of Body Acceleration Magnitude"
                        )

## 5. From the data set in step 4, creates a second, independent tidy data set
##    with the average of each variable for each activity and each subject.
    library(plyr)
    tidy_data <- ddply(kept_data, .(Subject,Activity), colwise(mean))
        
## Output the data into a csv file
    write.table(tidy_data, "tidyDataProject.csv", sep=",",row.names=FALSE)