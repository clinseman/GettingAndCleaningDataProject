# Code Book

## Description

The features in this database come from the accelerometer and gyroscope 3-axial signals. The time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyBodyAccerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagniture, timeBodyAccelerometerJerkMagniture, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyDomainSignalBodyAccelerometer-XYZ, frequencyDomainSignalBodyAccelerometerJerk-XYZ, frequencyDomainSignalBodyGyro-XYZ, frequencyDomainSignalBodyAccJerkMagnitude, frequencyDomainSignalBodyGyroMagnitude, frequencyDomainSignalBodyGyroJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The data is was then grouped by activty using the mean of each measurement. Producing one record for each activit for each user for a total of 180 rows X 68 columns.

## Data

- activity
	- The Activity that the subject took place in
		- walking
		- walkingUpstairs
		- walkingDownstairs
		- sitting
		- standing
		- laying

- subject
	- An identifier of the subject who carried out the experiment
	- Numbered from 1 to 30

Time
- timeBodyAccelerometerMeanX
- timeBodyAccelerometerMeanY
- timeBodyAccelerometerMeanZ

- timeBodyAccelerometerStandardDeviationX
- timeBodyAccelerometerStandardDeviationY
- timeBodyAccelerometerStandardDeviationZ

- timeGravityAccelerometerMeanX
- timeGravityAccelerometerMeanY
- timeGravityAccelerometerMeanZ

- timeGravityAccelerometerStandardDeviationX
- timeGravityAccelerometerStandardDeviationY
- timeGravityAccelerometerStandardDeviationZ

- timeBodyAccelerometerJerkMeanX
- timeBodyAccelerometerJerkMeanY
- timeBodyAccelerometerJerkMeanZ

- timeBodyAccelerometerJerkStandardDeviationX
- timeBodyAccelerometerJerkStandardDeviationY
- timeBodyAccelerometerJerkStandardDeviationZ

- timeBodyGyroscopeMeanX
- timeBodyGyroscopeMeanY
- timeBodyGyroscopeMeanZ

- timeBodyGyroscopeStandardDeviationX
- timeBodyGyroscopeStandardDeviationY
- timeBodyGyroscopeStandardDeviationZ

- timeBodyGyroscopeJerkMeanX
- timeBodyGyroscopeJerkMeanY
- timeBodyGyroscopeJerkMeanZ

- timeBodyGyroscopeJerkStandardDeviationX
- timeBodyGyroscopeJerkStandardDeviationY
- timeBodyGyroscopeJerkStandardDeviationZ

- timeBodyAccelerometerMagnitudeMean
- timeBodyAccelerometerMagnitudeStandardDeviation

- timeGravityAccelerometerMagnitudeMean
- timeGravityAccelerometerMagnitudeStandardDeviation

- timeBodyAccelerometerJerkMagnitudeMean
- timeBodyAccelerometerJerkMagnitudeStandardDeviation

- timeBodyGyroscopeMagnitudeMean
- timeBodyGyroscopeMagnitudeStandardDeviation
- timeBodyGyroscopeJerkMagnitudeMean
- timeBodyGyroscopeJerkMagnitudeStandardDeviation

- frequencyDomainSignalBodyAccelerometerMeanX
- frequencyDomainSignalBodyAccelerometerMeanY
- frequencyDomainSignalBodyAccelerometerMeanZ

- frequencyDomainSignalBodyAccelerometerStandardDeviationX
- frequencyDomainSignalBodyAccelerometerStandardDeviationY
- frequencyDomainSignalBodyAccelerometerStandardDeviationZ

- frequencyDomainSignalBodyAccelerometerJerkMeanX
- frequencyDomainSignalBodyAccelerometerJerkMeanY
- frequencyDomainSignalBodyAccelerometerJerkMeanZ

- frequencyDomainSignalBodyAccelerometerJerkStandardDeviationX
- frequencyDomainSignalBodyAccelerometerJerkStandardDeviationY
- frequencyDomainSignalBodyAccelerometerJerkStandardDeviationZ

- frequencyDomainSignalBodyGyroscopeMeanX
- frequencyDomainSignalBodyGyroscopeMeanY
- frequencyDomainSignalBodyGyroscopeMeanZ

- frequencyDomainSignalBodyGyroscopeStandardDeviationX
- frequencyDomainSignalBodyGyroscopeStandardDeviationY
- frequencyDomainSignalBodyGyroscopeStandardDeviationZ

- frequencyDomainSignalBodyAccelerometerMagnitudeMean
- frequencyDomainSignalBodyAccelerometerMagnitudeStandardDeviation

- frequencyDomainSignalBodyAccelerometerJerkMagnitudeMean
- frequencyDomainSignalBodyAccelerometerJerkMagnitudeStandardDeviation

- frequencyDomainSignalBodyGyroscopeMagnitudeMean
- frequencyDomainSignalBodyGyroscopeMagnitudeStandardDeviation

- frequencyDomainSignalBodyGyroscopeJerkMagnitudeMean
- frequencyDomainSignalBodyGyroscopeJerkMagnitudeStandardDeviation