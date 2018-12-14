 
 # Code Book
 Describes the variables, the data, and any transformations or work that you performed to clean up the data.
 
## Data Source
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data description:

Conforme described in the original data, the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



## Transformations 

* The training and the test sets have been merged to form a single data set;
* only the measurements on the mean and standard deviation for each measurement were extracted;
* descriptive activity names and labels were added in the data set;
* the data set labels were appropriatelly adjusted and labeled with descriptive variable names;
 + parenthesis, commas and dots were suprimited
 + some names have been adjusted
 + Ex.: "tBodyAcc-mean()-X" has been changed to "timeBodyAcceleration-meanX"
* a final tidy dataset was created as the final step.


## Variables in tidy_data.txt:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcceleration-XYZ and timeGyro-XYZ.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroMagnitude, frequencyBodyGyroJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcceleration-XYZ
timeGravityAcceleration-XYZ
timeBodyAccelerationJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccelerationMagnitude
timeGravityAccelerationMagnitude
timeBodyAccelerationJerkMagnitude
timeBodyGyroMagnitude
timeBodyGyroJerkMagnitude
frequencyBodyAcceleration-XYZ
frequencyBodyAccelerationJerk-XYZ
frequencyBodyGyro-XYZ
frequencyBodyAccelerationMagnitude
frequencyBodyAccelerationJerkMagnitude
frequencyBodyGyroMagnitude
frequencyBodyGyroJerkMagnitude

The set of variables that were estimated from these signals are: 
mean: Mean value
standardDeviation: Standard deviation

### Complete List of variables

 [1] "subId"                                                       
 [2] "activityType"                                                
 [3] "activityId"                                                  
 [4] "timeBodyAcceleration-meanX"                                  
 [5] "timeBodyAcceleration-meanY"                                  
 [6] "timeBodyAcceleration-meanZ"                                  
 [7] "timeBodyAcceleration-standardDeviationX"                     
 [8] "timeBodyAcceleration-standardDeviationY"                     
 [9] "timeBodyAcceleration-standardDeviationZ"                     
[10] "timeGravityAcceleration-meanX"                               
[11] "timeGravityAcceleration-meanY"                               
[12] "timeGravityAcceleration-meanZ"                               
[13] "timeGravityAcceleration-standardDeviationX"                  
[14] "timeGravityAcceleration-standardDeviationY"                  
[15] "timeGravityAcceleration-standardDeviationZ"                  
[16] "timeBodyAccelerationJerk-meanX"                              
[17] "timeBodyAccelerationJerk-meanY"                              
[18] "timeBodyAccelerationJerk-meanZ"                              
[19] "timeBodyAccelerationJerk-standardDeviationX"                 
[20] "timeBodyAccelerationJerk-standardDeviationY"                 
[21] "timeBodyAccelerationJerk-standardDeviationZ"                 
[22] "timeBodyGyro-meanX"                                          
[23] "timeBodyGyro-meanY"                                          
[24] "timeBodyGyro-meanZ"                                          
[25] "timeBodyGyro-standardDeviationX"                             
[26] "timeBodyGyro-standardDeviationY"                             
[27] "timeBodyGyro-standardDeviationZ"                             
[28] "timeBodyGyroJerk-meanX"                                      
[29] "timeBodyGyroJerk-meanY"                                      
[30] "timeBodyGyroJerk-meanZ"                                      
[31] "timeBodyGyroJerk-standardDeviationX"                         
[32] "timeBodyGyroJerk-standardDeviationY"                         
[33] "timeBodyGyroJerk-standardDeviationZ"                         
[34] "timeBodyAccelerationMagnitude-mean"                          
[35] "timeBodyAccelerationMagnitude-standardDeviation"             
[36] "timeGravityAccelerationMagnitude-mean"                       
[37] "timeGravityAccelerationMagnitude-standardDeviation"          
[38] "timeBodyAccelerationJerkMagnitude-mean"                      
[39] "timeBodyAccelerationJerkMagnitude-standardDeviation"         
[40] "timeBodyGyroMagnitude-mean"                                  
[41] "timeBodyGyroMagnitude-standardDeviation"                     
[42] "timeBodyGyroJerkMagnitude-mean"                              
[43] "timeBodyGyroJerkMagnitude-standardDeviation"                 
[44] "frequencyBodyAcceleration-meanX"                             
[45] "frequencyBodyAcceleration-meanY"                             
[46] "frequencyBodyAcceleration-meanZ"                             
[47] "frequencyBodyAcceleration-standardDeviationX"                
[48] "frequencyBodyAcceleration-standardDeviationY"                
[49] "frequencyBodyAcceleration-standardDeviationZ"                
[50] "frequencyBodyAccelerationJerk-meanX"                         
[51] "frequencyBodyAccelerationJerk-meanY"                         
[52] "frequencyBodyAccelerationJerk-meanZ"                         
[53] "frequencyBodyAccelerationJerk-standardDeviationX"            
[54] "frequencyBodyAccelerationJerk-standardDeviationY"            
[55] "frequencyBodyAccelerationJerk-standardDeviationZ"            
[56] "frequencyBodyGyro-meanX"                                     
[57] "frequencyBodyGyro-meanY"                                     
[58] "frequencyBodyGyro-meanZ"                                     
[59] "frequencyBodyGyro-standardDeviationX"                        
[60] "frequencyBodyGyro-standardDeviationY"                        
[61] "frequencyBodyGyro-standardDeviationZ"                        
[62] "frequencyBodyAccelerationMagnitude-mean"                     
[63] "frequencyBodyAccelerationMagnitude-standardDeviation"        
[64] "frequencyBodyBodyAccelerationJerkMagnitude-mean"             
[65] "frequencyBodyBodyAccelerationJerkMagnitude-standardDeviation"
[66] "frequencyBodyBodyGyroMagnitude-mean"                         
[67] "frequencyBodyBodyGyroMagnitude-standardDeviation"            
[68] "frequencyBodyBodyGyroJerkMagnitude-mean"                     
[69] "frequencyBodyBodyGyroJerkMagnitude-standardDeviation"  
