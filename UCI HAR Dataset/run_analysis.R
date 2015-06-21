run_analysis <- function() {
    library(dplyr)
    
    # Read the data we will analysis
    x.test <- read.table("test/X_test.txt")
    y.test <- read.table("test/y_test.txt")
    subject.test <- read.table("test/subject_test.txt")
    
    x.train <- read.table("train/X_train.txt")
    y.train <- read.table("train/y_train.txt")
    subject.train <- read.table("train/subject_train.txt")
    
    activity.labels <- read.table("activity_labels.txt")
    features <- read.table("features.txt")
    
    # Combine the training, test into one data.frame
    x.combined <- rbind(x.train, x.test)
    y.combined <- rbind(y.train, y.test)
    
    # Combine the subjects from training, test into one data.frame
    subjects.combined <- rbind(subject.train, subject.test)
  
    # Select only the columns with Standard Deviation or Mean values
    mean.std <- which(apply(features, 1, function(x) any(grepl("mean\\(\\)|std\\(\\)", x))))
    x.combined <- x.combined[,mean.std]
    
    # Remove "()" and "-"from the column names 
    names(x.combined) <- gsub("\\(\\)", "", features[mean.std, 2])
    names(x.combined) <- gsub("-", "", names(x.combined))
    
    # Clean up the activity names and make them lower case
    activity.labels[,2] <- tolower(gsub("_", "", activity.labels[,2]))
    
    # Convert from a numeric indicator to the english word for the activity 
    y.combined <- activity.labels[,2][match(y.combined$V1, activity.labels[,1])]
    
    # Combine the three data sets
    combined.data <- cbind(subjects.combined, y.combined, x.combined)
    
    # Give the first two column names more descriptive names
    names(combined.data)[1] <- "subject"
    names(combined.data)[2] <- "activity"
  
    
    # Create a file using our tidy data set with the average of each variable for each activity and each subject
    tidy.data <- combined.data %>% group_by(subject, activity) %>% summarise_each(funs(mean))
    
    # Save the data in tidy.data to a file.
    write.table(tidy.data, "tidydata.txt", row.names=FALSE)
    
    # Clean up memory
    rm(activity.labels)
    rm(combined.data)
    rm(features)
    rm(subject.test)
    rm(subject.train)
    rm(subjects.combined)
    rm(tidy.data)
    rm(x.combined)
    rm(x.test)
    rm(x.train)
    rm(y.test)
    rm(y.train)
    rm(mean.std)
    rm(y.combined)
}


