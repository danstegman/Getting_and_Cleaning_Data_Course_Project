# Getting_and_Cleaning_Data_Course_Project
## Code Book
by Dan Stegman
The Tidy Data set that is produced by the script is called tidyDataProject.txt.  It is a csv file, with the following values:
1. Subject - This is the subject number from the data set, numbered 1-30
2. Activity - one of 6 possible activity levels (in alphabetical order)	Laying
	Sitting
	Standing
	Walking
	Walking downstairs
	Walking upstairs
3. Mean Body Acceleration X-axis as related to time - the mean of all values of tBodyAcc-mean-x
4. Mean Body Acceleration Y-axis as related to time - the mean of all values of tBodyAcc-mean-y
5. Mean Body Acceleration Z-axis as related to time - the mean of all values of tBodyAcc-mean-z
6. Standard Deviation Acceleration X-axis as related to time
7. Standard Deviation Acceleration Y-axis as related to time
8. Standard Deviation Acceleration Z-axis as related to time             
9. Mean Gravity X-axis as related to time
10. Mean Gravity Y-axis as related to time
11. Mean Gravity Z-axis as related to time
12. Standard Deviation Gravity X-axis as related to time
13. Standard Deviation Gravity Y-axis as related to time
14. Standard Deviation Gravity Z-axis as related to time
15. Mean Body Derivative of Acceleration X-axis as related to time
16. Mean Body Derivative of Acceleration Y-axis as related to time
17. Mean Body Derivative of Acceleration Z-axis as related to time
18. Standard Deviation Body Derivative of Acceleration X-axis as related to time
19. Standard Deviation Body Derivative of Acceleration Y-axis as related to time
20. Standard Deviation Body Derivative of Acceleration Z-axis as related to time
21. Mean Body Angular Acceleration X-axis as related to time
22. Mean Body Angular Acceleration Y-axis as related to time
23. Mean Body Angular Acceleration Z-axis as related to time
24. Standard Deviation Body Angular Acceleration X-axis as related to time
25. Standard Deviation Body Angular Acceleration Y-axis as related to time
26. Standard Deviation Body Angular Acceleration Z-axis as related to time
27. Mean Body Derivative of Angular Acceleration X-axis as related to time
28. Mean Body Derivative of Angular Acceleration Y-axis as related to time
29. Mean Body Derivative of Angular Acceleration Z-axis as related to time
30. Standard Deviation Body Derivative of Angular Acceleration X-axis as related to time
31. Standard Deviation Body Derivative of Angular Acceleration Y-axis as related to time
32. Standard Deviation Body Derivative of Angular Acceleration Z-axis as related to time
33. Mean Body Accelearation Magnitude as related to time
34. Standard Deviation Body Accelearation Magnitude as related to time
35. Mean Gravity Acceleration Magnitude as related to time
36. Standard Deviation Gravity Acceleration Magnitude as related to time
37. Mean Body Derivative of Acceleration Magnitude as related to time
38. Standard Deviation Body Derivative of Acceleration Magnitude as related to time
39. Mean Body Angular Acceleration Magnitude as related to time
40. Standard Deviation Body Angular Acceleration Magnitude as related to time
41. Mean Body Derivative of Angular Acceleration Magnitude as related to time
42. Standard Deviation Body Derivative of Angular Acceleration Magnitude as related to time
43. Mean Frequency Domain Signal of Body Acceleration X-axis
44. Mean Frequency Domain Signal of Body Acceleration Y-axis
45. Mean Frequency Domain Signal of Body Acceleration Z-axis
46. Standard Deviation Frequency Domain Signal of Body Acceleration X-axis
47. Standard Deviation Frequency Domain Signal of Body Acceleration Y-axis
48. Standard Deviation Frequency Domain Signal of Body Acceleration Z-axis
49. Mean Frequency Domain Signal of Derivative of Body Angular Acceleration X-axis
50. Mean Frequency Domain Signal of Derivative of Body Angular Acceleration Y-axis
51. Mean Frequency Domain Signal of Derivative of Body Angular Acceleration Z-axis
52. Standard Deviation Frequency Domain Signal of Derivative of Body Angular Acceleration X-axis
53. Standard Deviation Frequency Domain Signal of Derivative of Body Angular Acceleration Y-axis
54. Standard Deviation Frequency Domain Signal of Derivative of Body Angular Acceleration Z-axis
55. Mean Frequency Domain Signal of Body Angular Acceleration X-axis
56. Mean Frequency Domain Signal of Body Angular Acceleration Y-axis
57. Mean Frequency Domain Signal of Body Angular Acceleration Z-axis
58. Standard Deviation Frequency Domain Signal of Body Angular Acceleration X-axis
59. Standard Deviation Frequency Domain Signal of Body Angular Acceleration Y-axis
60. Standard Deviation Frequency Domain Signal of Body Angular Acceleration Z-axis
61. Mean Frequency Domain Signal of Body Acceleration Magnitude
62. Standard Deviation Frequency Domain Signal of Body Acceleration Magnitude

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
