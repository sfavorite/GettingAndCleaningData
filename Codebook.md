# H1 Codebook
This dataset was created from a copy of the Human Activity Recognition Using Smartpones Data Set[[1](#raw-data)]. 

From the original README.txt:
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. "


# H2 ID Fields
subject - The participants ID
activity - The type of activity performed (walking, standing, etc...)

# H2 Activity Labels and corresponding value
The original value codes were replaced with the English word equivalent
* Walking - value 1
* Walking upstairs - value 2
* Waling downstairs - value 3
* Sitting - value 4
* Standing - value 5
* Laying - value 6

# H2 Extracted Features with Mean or Standard Deviation values along with the subject and activity performed. 
1 subject
2 activity
3 tBodyAccmeanX
4 tBodyAccmeanY
5 tBodyAccmeanZ
6 tBodyAccstdX
7 tBodyAccstdY
8 tBodyAccstdZ
9 tGravityAccmeanX
10 tGravityAccmeanY
11 tGravityAccmeanZ
12 tGravityAccstdX
13 tGravityAccstdY
14 tGravityAccstdZ
15 tBodyAccJerkmeanX
16 tBodyAccJerkmeanY
17 tBodyAccJerkmeanZ
18 tBodyAccJerkstdX
19 tBodyAccJerkstdY
20 tBodyAccJerkstdZ
21 tBodyGyromeanX
22 tBodyGyromeanY
23 tBodyGyromeanZ
24 tBodyGyrostdX
25 tBodyGyrostdY
26 tBodyGyrostdZ
27 tBodyGyroJerkmeanX
28 tBodyGyroJerkmeanY
29 tBodyGyroJerkmeanZ
30 tBodyGyroJerkstdX
31 tBodyGyroJerkstdY
32 tBodyGyroJerkstdZ
33 tBodyAccMagmean
34 tBodyAccMagstd
35 tGravityAccMagmean
36 tGravityAccMagstd
37 tBodyAccJerkMagmean
38 tBodyAccJerkMagstd
39 tBodyGyroMagmean
40 tBodyGyroMagstd
41 tBodyGyroJerkMagmean
42 tBodyGyroJerkMagstd
43 fBodyAccmeanX
44 fBodyAccmeanY
45 fBodyAccmeanZ
46 fBodyAccstdX
47 fBodyAccstdY
48 fBodyAccstdZ
49 fBodyAccJerkmeanX
50 fBodyAccJerkmeanY
51 fBodyAccJerkmeanZ
52 fBodyAccJerkstdX
53 fBodyAccJerkstdY
54 fBodyAccJerkstdZ
55 fBodyGyromeanX
56 fBodyGyromeanY
57 fBodyGyromeanZ
58 fBodyGyrostdX
59 fBodyGyrostdY
60 fBodyGyrostdZ
61 fBodyAccMagmean
62 fBodyAccMagstd
63 fBodyBodyAccJerkMagmean
64 fBodyBodyAccJerkMagstd
65 fBodyBodyGyroMagmean
66 fBodyBodyGyroMagstd
67 fBodyBodyGyroJerkMagmean
68 fBodyBodyGyroJerkMagstd

References
----------
1.  <a name="raw-data"/>Human Activity Recognition Using Smartphones Data Set.
    URL: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.
