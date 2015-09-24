run_analysis <- function(){
  library(data.table)
  # load test data  
  subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
  X_test = read.table("UCI HAR Dataset/test/X_test.txt")
  Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")
  
  # load training data
  subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
  X_train = read.table("UCI HAR Dataset/train/X_train.txt")
  Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")
  
  # minimize tables features and activities
  features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
  activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))
  # select only the columns with mean and std
  selectedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)
  
  # merge test and training data and then name them
  main_subject <- rbind(subject_test, subject_train)
  names(main_subject) <- "subjectId"
  X <- rbind(X_test, X_train)
  X <- X[, selectedFeatures]
  names(X) <- features$featureLabel[selectedFeatures]


  Y <- rbind(Y_test, Y_train)
  names(Y) = "activityId"
  activity <- merge(Y, activities, by="activityId")$activityLabel
  
  # merge data frames 
  dummy_data <- cbind(main_subject, X, activity)
  write.table(dummy_data, "tidy_data1.txt",row.names=FALSE)
  
  # create a dataset grouped by subject and activity after applying standard deviation and average calculations
  dummy_data2 <- data.table(dummy_data)
  dummy_data3<- dummy_data2[, lapply(.SD, mean), by=c("subjectId", "activity")]
  write.table(dummy_data3, "tidy_data2.txt",row.names=FALSE)
}
