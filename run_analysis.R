library("rapport")
library("reshape2")
library("plyr")

## Step 1: Merges the training and the test sets to create one data set.
# read in training data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# update the Y and Subject data column name and add it to the X data
colnames(y_train) <- c("activity")
colnames(subject_train) <- c("subject")
train <- cbind(cbind(y_train, subject_train), x_train)

# read in test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# update the Y data column name and add it to the X data
colnames(y_test) <- c("activity")
colnames(subject_test) <- c("subject")
test <- cbind(cbind(y_test, subject_test), x_test)

# join the train and test datasets
data <- rbind(test, train)

# update the column names in the data file based on the features
# read in the features file
features <- read.table("./UCI HAR Dataset/features.txt")
colnames(data)[3:length(data)] <- as.character(features$V2)

## Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
data <- subset(data, , grep("-mean\\(|-std\\(|activity|subject", colnames(data)))

## Step 3: Uses descriptive activity names to name the activities in the data set
# read in the activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
activityLabels$V2 <- tocamel(tolower(activityLabels$V2))

data$activity <- factor(data$activity, levels = activityLabels$V1, labels = activityLabels$V2)

## Step 4: Appropriately labels the data set with descriptive variable names. 
# get the colnames
c <- colnames(data)

# get rid of wierd BodyBody thing
c <- sub("BodyBody", "Body", c)

# replace t with time
c <- sub("^t", "time", c)

# replace f with frequency domain signal
c <- sub("^f", "frequencyDomainSignal", c)

# replace Acc with Accelerometer
c <- sub("Acc", "Accelerometer", c)

# replace Gyro with Gyroscope
c <- sub("Gyro", "Gyroscope", c)

# replace -mean() with Mean
c <- sub("-mean\\(\\)(-){0,1}", "Mean", c)

# replace -std() with StandardDeviation
c <- sub("-std\\(\\)(-){0,1}", "StandardDeviation", c)

# replace Mag with Magnitude
c <- sub("Mag", "Magnitude", c)

# update the data frame with the new names
colnames(data) <- c

## Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
dm <- melt(data, id.vars = c("activity", "subject"))
tidyData <- ddply(dm, .(activity, subject, variable), summarize, mean=mean(value))

## output the data
write.table(tidyData, file = "output.txt", row.names = FALSE, quote = FALSE)