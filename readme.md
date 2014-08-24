Steps to reproduce the Tidy Data set from the original data.

Make sure to run the run_analysis.r script from a directory that contains the original version of the UCI HAR Dataset folder.

Steps to clean the data:

Step 1: Merges the training and the test sets to create one data set.
- read in training data
- update the Y training and Subject data column name and add it to the X data
- read in test data
- update the Y test and Subject data column name and add it to the X data
- join the train and test datasets
- update the column names in the data file based on the features in the features file

Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
- use a regex to subset only column names that contain -mean(, -std(, activity or subject. The exact regex is: `-mean\\(|-std\\(|activity|subject`

Step 3: Uses descriptive activity names to name the activities in the data set

Step 4: Appropriately labels the data set with descriptive variable names. 
- use various regex commands to update the lables
- get rid of wierd BodyBody thing
- replace t with time
- replace f with frequency domain signal
- replace Acc with Accelerometer
- replace Gyro with Gyroscope
- replace -mean() with Mean
- replace -std() with StandardDeviation
- replace Mag with Magnitude
- update the data frame with the new names

Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
- this is done specifically with the plyr library

Finally the data is saved as output.txt