Getting and Cleaning Data Course Project
========================================

The [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
for this project has been collected from the accelerometers and gyroscopes of the Samsung Galaxy S smartphone.
A full description of the data set is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The R code contained in [run_analysis.R](run_analysis.R) performs the project requirements:

1. Reads feature names and filters the ones ending in "mean()" or "std()"
2. Reads test and training feature measurements for those features.
Reads subjects and activity results, and merges all into a single data frame. 
3. Reads the activity names and activity integer ids. Converts the activity result
column in a factor which uses the same integer ids.
4. Creates a new data frame, by aggregating data based on subject and activity,
and applying the mean function.
5. Saves the tidy data frame into a file called "tidy.txt".

A [code book](CodeBook.md) with a description of the columns contained in "tidy.txt". 
