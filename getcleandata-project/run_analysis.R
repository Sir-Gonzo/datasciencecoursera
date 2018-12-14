# 1 - Merges the training and the test sets to create one data set.
# 2 - Extracts only the measurements on the mean and standard deviation for each 
# measurement.
# 3 - Uses descriptive activity names to name the activities in the data set
# 4 - Appropriately labels the data set with descriptive variable names.
# 5 - From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.


# Define directory
path <- "./Getting and Cleaning Data Course Project/"
path2 <- paste0(path,"UCI HAR Dataset/")

# Download and extract a zip file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest_file <- paste0(path,"dataset.zip")

if (!file.exists(path2)) {
    if (!file.exists(path)) {
        dir.create("./Getting and Cleaning Data Course Project/")
    }
    download.file(url, destfile = dest_file, method = "curl")
    unzip(dest_file, exdir = path)
}

# Load datasets and assign column names
features        <- read.table(paste0(path2,"features.txt"))
validFeatures   <- grepl("mean\\(\\)|std\\(\\)", features[,2])  #Extracts only the measurements on the mean and standard deviation
activityLabel   <- read.table(paste0(path2,"activity_labels.txt"), col.names = c("activityId","activityType"))
subjectTrain    <- read.table(paste0(path2,"train/subject_train.txt"), col.names = "subId")
xTrain          <- read.table(paste0(path2,"train/X_train.txt"), col.names = as.vector(features[,2]))
yTrain          <- read.table(paste0(path2,"train/y_train.txt"), col.names = "activityId")
subjectTest     <- read.table(paste0(path2,"test/subject_test.txt"), col.names = "subId")
xTest           <- read.table(paste0(path2,"test/X_test.txt"), col.names = as.vector(features[,2]))
yTest           <- read.table(paste0(path2,"test/y_test.txt"), col.names = "activityId")

# Merges the training and the test sets
y <- rbind(yTest,yTrain)
subject <- rbind(subjectTest,subjectTrain)
# 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
x <- rbind(xTest,xTrain)[,validFeatures]
# 1 - Merges the training and the test sets to create one data set.
df <- cbind(y,subject,x)

# 3 - Uses descriptive activity names to name the activities in the data set
df <- merge(activityLabel, df, by.x = "activityId")

# 4 - Appropriately labels the data set with descriptive variable names
#Remove parentheses, commas and dots
names(df) <- gsub("\\(|\\)|,|\\.", "", names(df))
#add descriptive variable names
names(df) <- gsub("Acc", "Acceleration", names(df))
names(df) <- gsub("^t", "time", names(df))
names(df) <- gsub("^f", "frequency", names(df))
names(df) <- gsub("mean", "-mean", names(df))
names(df) <- gsub("std", "-standardDeviation", names(df))
names(df) <- gsub("Mag", "Magnitude", names(df))

# 5 - From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
library(plyr)
tidy_data <- ddply(df, c("subId","activityType"), numcolwise(mean))

#Save tidy data
write.table(tidy_data, file = paste0(path,"tidy_data.txt"),row.name=FALSE)
