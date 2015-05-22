# Getting and Cleaning Data Course Project
## Code Book
by Dan Stegman

## Study Design
---
The Tidy Data set that is produced by the script is called tidyDataProject.txt.
This file is a distillation of accelerometer data collected from 30 subjects using Samsung Galaxy S II phones.  The original data is from the UCI HAR Dataset.

This data was prepared by the following steps:  
1. Load the following 6 files:  
    /train/X_train.txt  
    /train/y_train.txt  
    /train/subject_train.txt  
    /test/X_test.txt  
    /test/y_test.txt  
    /test/subject_test.txt  
2. Combine each table "set", as follows:  
    X_train.txt combined with X_test.txt  
    y_train.txt combined with y_test.txt  
    subject_train.txt combined with subject_test.txt      
3. Modify the y_* data with easy to read identifiers instead of 1-6  
4. Combine all 3 tables into one large table, as follows:  
    subject data becomes the first column, Subject  
    the modified y data becomes the second column, Activity  
    x data becomes the remaining columns  
5. Extract the required data so that we have the Subject, Activity, and any columns that contain Mean and Standard Deviation data and put them into a new table, kept_data.  
6. Add proper and readable column names to kept_data  
7. From each subject/activity grouping, create the mean for each of the remaining columns, using ddply with colwise(mean).  
8. Export this data as a csv file, tidyDataProject.csv  

## Code Book
---
tidyDataProject.csv is a csv file, with the following values:

1. Subject - This is the subject number from the data set, numbered 1-30  
2. Activity - one of 6 possible activity levels (in alphabetical order)  
    Laying  
    Sitting  
    Standing  
    Walking  
    Walking downstairs  
    Walking upstairs  

The remaining data columns are all numeric data  
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