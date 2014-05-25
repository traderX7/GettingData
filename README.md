Coursera Course on Getting and Cleaning Data
==========

Course Project 
-------------

This repo is provided for the assignment of course project on "Getting and Cleaning Data"  instructed by John Hopkins university Coursera data science team.

What is the assignment?
------------------------
The assignment is to perform something of data preparation as follows;
0) downloads data sets from the website below which is composed of several files.
    url is : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement. 

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive activity names. 

5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

For the above, we create R program called "run_analysis.R". And we write this file (README.md) and "CodeBook.md" which prescribes the variables and so forth.


How do we solve?
--------------------
First of all, we considered the whole structure of files. We thought David Hood CTA's comment is correct ( https://class.coursera.org/getdata-003/forum/thread?thread_id=90 ). Then under an understanding of the structure above, I made processes as follows;

a) Read the necessary files into R and combined the train and test files of X, y and subject each. Confirmed if their dimensions are appropriate.

b) y_file is activity data described in number. Replaced them with words which are corresponded to the number described in "activity_label.txt".

c) made column names of features file more readable. For example, removed " () -" and replaced "mean" and "std" with "Mean" and "Std" respectively. Before that, changed "meanFreq" into "meaFreq" in order to not include them in "mean" extraction because "meanFreq" is different from "mean".

d) combined all files of X, y and subject into one. Named columns with features.

e) extracted data whose column name includes "Mean" or "Std" by grep function. And combined it with y and subject files with column names "Activity" and "Subject".

f) calculated averages of "Mean" and "Std" columns by keywords, "Activity" and "Subject". In this case, I thought activity is the first keyword because the purpose of this sequent analysis would be to detect a specific activity from the measurements of accelerometer and something. Used data.table and lapply function which works amazingly. Wrote the "tidydata.txt" file which is our purpose to create.


Comment something else?
-----------------------
I solved the assignment like the above. Thinking of its sequent analysis, I think whole data is still valuable. Because it's possible to make efficient analysis with lots of data with many columns. I have taken a Coursera course on Data Analysis last year. I was amazed with the powerful analytics like tree and randomForest and so forth. Their accuracy is much much higher. I believed that computational statistics could make a revolution in the existing academia which is restricted by some criteria such as AIC or something. And R would play a very important roll in it. At least to say, it's a good chance to clear its reputation, "lie, damned lie and statistics";-)




