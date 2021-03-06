 This Code Book describes the intructions to run the function "run_analysis.R", the library, 
 the transformations data, and the output.
 
 #Instructions  

    1. Download the data set, https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    2. Unzip the data set into your working directory in a folder named UCI HAR Dataset
    3. Copy in this folder the function "run_analysis.R"
    3. Open Studio R
    4. Set the working directory (File - Change dir - Browse) or setwd ("directory path")
    5. Load the R script using source("run_analysis.txt")
    6. Run the R script using run_analysis(). Two files will be created tidy_data1.txt and tidy_data2.txt.


#Library
     data.table

#Transformations data

   1.Downloaded the data set
   2.Unzipped the data set into my chosen working directory
   3.Loaded test and training data sets into data frames
   4.Loaded source variable names for test and training data sets
   5.Loaded activity labels
   6.Combined test and training data frames using rbind
   7.Paired down the data frames to only include the mean and standard deviation variables
   8.Replaced activity IDs with the activity labels for readability
   9.Combined the data frames to produce one data frame containing the subjects, measurements and activities
   10.Produced "tidy_data1.txt" with the combined data frame as the first expected output
   11.Created another data set ("tidy_data2.txt") using the data.table library to easily group the tidy data by subject and activity
   12.Then applied the mean and standard deviation calculations across the groups
13.Produced "calculated_tidy_data.txt" as the second expected output


#Variables 

•subjectId: 1 to 30 each representing a participant in the study
•activity: 
•tBodyAcc-mean-X
•tBodyAcc-mean-Y
•tBodyAcc-mean-Z
•tBodyAcc-std-X
•tBodyAcc-std-Y
•tBodyAcc-std-Z
•tGravityAcc-mean-X
•tGravityAcc-mean-Y
•tGravityAcc-mean-Z
•tGravityAcc-std-X
•tGravityAcc-std-Y
•tGravityAcc-std-Z
•tBodyAccJerk-mean-X
•tBodyAccJerk-mean-Y
•tBodyAccJerk-mean-Z
•tBodyAccJerk-std-X
•tBodyAccJerk-std-Y
•tBodyAccJerk-std-Z
•tBodyGyro-mean-X
•tBodyGyro-mean-Y
•tBodyGyro-mean-Z
•tBodyGyro-std-X
•tBodyGyro-std-Y
•tBodyGyro-std-Z
•tBodyGyroJerk-mean-X
•tBodyGyroJerk-mean-Y
•tBodyGyroJerk-mean-Z
•tBodyGyroJerk-std-X
•tBodyGyroJerk-std-Y
•tBodyGyroJerk-std-Z
•tBodyAccMag-mean
•tBodyAccMag-std
•tGravityAccMag-mean
•tGravityAccMag-std
•tBodyAccJerkMag-mean
•tBodyAccJerkMag-std
•tBodyGyroMag-mean
•tBodyGyroMag-std
•tBodyGyroJerkMag-mean
•tBodyGyroJerkMag-std
•fBodyAcc-mean-X
•fBodyAcc-mean-Y
•fBodyAcc-mean-Z
•fBodyAcc-std-X
•fBodyAcc-std-Y
•fBodyAcc-std-Z
•fBodyAccJerk-mean-X
•fBodyAccJerk-mean-Y
•fBodyAccJerk-mean-Z
•fBodyAccJerk-std-X
•fBodyAccJerk-std-Y
•fBodyAccJerk-std-Z
•fBodyGyro-mean-X
•fBodyGyro-mean-Y
•fBodyGyro-mean-Z
•fBodyGyro-std-X
•fBodyGyro-std-Y
•fBodyGyro-std-Z
•fBodyAccMag-mean
•fBodyAccMag-std
•fBodyBodyAccJerkMag-mean
•fBodyBodyAccJerkMag-std
•fBodyBodyGyroMag-mean
•fBodyBodyGyroMag-std
•fBodyBodyGyroJerkMag-mean
•fBodyBodyGyroJerkMag-std

mean(): Mean value
std(): Standard deviation

#Output
    1. tidy_data1.txt    contains the merge Data
    2. tidy_data2.txt    contains the average of each variable for each activity and each subject



