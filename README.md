# Getting_and_Cleaning_Data_Course_Project
A repo containing the files required for the Course Project for
Getting and Cleaning Data
by Dan Stegman

Per the course project objectives, this repo includes:
	• This README.md detailing how the script works
	• A tidy data set created from the original data files
	• A codebook file (CodeBook.md) that describes the variables, data and transformations performed to clean up the data
	• A R file that contains the script completing the analysis and creates the tidy data set file

I use a single script to:
	1. import the 6 data files
	2. combine each of the data files (X_test combined with X_train, etc.)
	3. make the activity data readable
	4. combine all files together into one large data table
	5. add tidy column names (Subject instead of V1, etc.)
	6. calculate the mean of each data column for each subject and activity
	7. output the data to a text file