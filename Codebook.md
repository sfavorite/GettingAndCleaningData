# Codebook
This dataset was created from a copy of the Human Activity Recognition Using Smartpones Data Set[[1](#raw-data)]. 

The raw data was combined into one data set, labels and feature names modified. The data was finally grouped by subject and activity and variables measuring the Mean and Standard Deviation were summarized. 


## Data Transformations
The raw data was combined with new values and column names. The description of the changes is listed below. 

### Combined data
The test and training sets of each type (subject, activity, etc.) were comined into one data set for each type.

### ID Fields
The ID fields consist of the subject and activity performed. These columns were given appropriate labels (subject, and activity). 

* subject - The participants ID
* activity - The type of activity performed (walking, standing, etc...)

### Activity Labels and corresponding value
The original value codes were replaced with the English word equivalent.

* Walking - value 1
* Walking upstairs - value 2
* Waling downstairs - value 3
* Sitting - value 4
* Standing - value 5
* Laying - value 6


### Extracted Features with Mean or Standard Deviation values along with the subject and activity performed.
Sixty-six features that were either the Mean or Standard Deviation were taken from the total combined data and along with the subject and activity a data set (combined.data in the R code) was created. From this data set an independent tidy data set ("tidydata.txt") with the average of each variable for each activity and each subject. Also the column names were set to R standard names by removing the characters "()" and "-".

1. subject
2. activity
3. tBodyAccmeanX
4. tBodyAccmeanY
5. tBodyAccmeanZ
6. tBodyAccstdX
7. tBodyAccstdY
8. tBodyAccstdZ
9. tGravityAccmeanX
10. tGravityAccmeanY
11. tGravityAccmeanZ
12. tGravityAccstdX
13. tGravityAccstdY
14. tGravityAccstdZ
15. tBodyAccJerkmeanX
16. tBodyAccJerkmeanY
17. tBodyAccJerkmeanZ
18. tBodyAccJerkstdX
19. tBodyAccJerkstdY
20. tBodyAccJerkstdZ
21. tBodyGyromeanX
22. tBodyGyromeanY
23. tBodyGyromeanZ
24. tBodyGyrostdX
25. tBodyGyrostdY
26. tBodyGyrostdZ
27. tBodyGyroJerkmeanX
28. tBodyGyroJerkmeanY
29. tBodyGyroJerkmeanZ
30. tBodyGyroJerkstdX
31. tBodyGyroJerkstdY
32. tBodyGyroJerkstdZ
33. tBodyAccMagmean
34. tBodyAccMagstd
35. tGravityAccMagmean
36. tGravityAccMagstd
37. tBodyAccJerkMagmean
38. tBodyAccJerkMagstd
39. tBodyGyroMagmean
40. tBodyGyroMagstd
41. tBodyGyroJerkMagmean
42. tBodyGyroJerkMagstd
43. fBodyAccmeanX
44. fBodyAccmeanY
45. fBodyAccmeanZ
46. fBodyAccstdX
47. fBodyAccstdY
48. fBodyAccstdZ
49. fBodyAccJerkmeanX
50. fBodyAccJerkmeanY
51. fBodyAccJerkmeanZ
52. fBodyAccJerkstdX
53. fBodyAccJerkstdY
54. fBodyAccJerkstdZ
55. fBodyGyromeanX
56. fBodyGyromeanY
57. fBodyGyromeanZ
58. fBodyGyrostdX
59. fBodyGyrostdY
60. fBodyGyrostdZ
61. fBodyAccMagmean
62. fBodyAccMagstd
63. fBodyBodyAccJerkMagmean
64. fBodyBodyAccJerkMagstd
65. fBodyBodyGyroMagmean
66. fBodyBodyGyroMagstd
67. fBodyBodyGyroJerkMagmean
68. fBodyBodyGyroJerkMagstd


### Original Columns 

The extracted columns correlate to the following original data columns (before adding subject and activity - please refer to the raw data for exact column number matching):

1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 345, 346, 347,  348, 349, 350, 424, 
425, 426, 427, 428, 429, 503, 504, 516 ,517 529, 530, 542, 543


References
----------
1.  <a name="raw-data"/>Human Activity Recognition Using Smartphones Data Set.
    URL: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.
