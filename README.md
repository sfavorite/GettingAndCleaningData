# GettingAndCleaningData

Thsi file describes how run_analsis.R script works and changes the raw data.

The raw data used was from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

this data was originaly abtained from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

This script was run and tested on:
R version 3.2.0 (2015-04-16)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Gentoo/Linux

Using gzip the data was extracted and read into a data.frame for munipulation. Using the base R package the x, y and subjects test/training sets were 
combined into three data frames (x.combined, y.combined & subjects.combined). 

From the x.combined data frame only the 66 columns containing mean and standard deviatiosn were retained. 

All column names at this point were converted to R stanard names removing () and - from the column names.

Activity labels were striped of _ charcaters and converted to all lower case (none camel format) and replaced numerical 
values with the descirptive English word.

The subjects, activities (y.combined) and combined test/train data (x.combined) were stored in a new data frame with the
column names changed to subject and activity respectivly.

A summary data set was then created using the dplyr package (version 0.4.1) giving the average for each subject
grouped by the actvity and this file was saved as tidydata.txt.

