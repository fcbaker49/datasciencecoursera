## Script for running analysis required as class project for
## Data Cleaning Course on Coursera

projectrun <- function(){
 
## Load significant data  
  ## text lables for activities 1 through 6
  actlabels <- read.table( "activity_labels.txt")
  
  ## feature lables 1 through 561
  features <- read.table("features.txt")
  
  ## 2947 observations of 561 variables
  testdata <- read.table("test/X_test.txt")
  
  ## 2947 column lables for activity
  testdatlab <- read.table("test/y_test.txt")
  
  ## 7352 observations of 561 variables for training
  traindata <- read.table("train/X_train.txt")
  
  ## 7352 column levels for training activity
  traindatlab <- read.table("train/y_train.txt")
  
  ## Add column labels to test and train data
  colnames(testdata) <- as.character(features[,2])
  colnames(traindata) <- as.character(features[,2])
  
  ## Create the accumulated data set, alldata
  
  ## First add activities to test data and train data
  alldata1 <- cbind(testdatlab,testdata)
  colnames(alldata1)[1] <- "Activity"
  alldata2 <- cbind(traindatlab,traindata)
  colnames(alldata2)[1] <- "Activity"
  
  ## now merge data set
  alldata <- rbind(alldata1, alldata2)
  ##alldata <- tbl_df(alldata)
  
  ##Substitute activity names for numbers
  alldata[,1] <- gsub("1", "Walking" , alldata$Activity)
  alldata[,1] <- gsub("2", "Walking_Upstairs" , alldata$Activity)
  alldata[,1] <- gsub("3", "Walking_Downstairs" , alldata$Activity)
  alldata[,1] <- gsub("4", "Sitting" , alldata$Activity)
  alldata[,1] <- gsub("5", "Standing" , alldata$Activity)
  alldata[,1] <- gsub("6", "Laying" , alldata$Activity)
  
  ## Extract only columns on mean and standard deviation
  stdormean <- colnames(alldata) == ".std." | colnames (alldata) == ".dev."
  x0 <- 1
  x1 <- grep("std",names(alldata))
  x2 <- grep("mean",names(alldata))
  x <- c(x0, x1,x2)
  x <- sort(x, decreasing = FALSE)
  alldata <- alldata[,x]
  
  ## Apply descriptive names to columns
  descnames <- c("Activity",
             "Body_Accel_X-Axis_time_mean",
             "Body_Accel_Y-Axis_time_mean", 
             "Body_Accel_Z-Axis_time_mean", 
             "Body_Accel_X_Axis_time_std_dev" , 
             "Body_Accel_Y_Axis_time_std_dev",
             "Body_Accel_Z_Axis_time_std_dev",
             "Gravity_Accel_X-Axis_time_mean", 
             "Gravity_Accel_Y-Axis_time_mean",           
             "Gravity_Accel_Z-Axis_time_mean",
             "Gravity_Accel_X-Axis_time_std_dev",
             "Gravity_Accel_Y-Axis_time_std_dev",
             "Gravity_Accel_Z-Axis_time_std_dev",            
             "Body_Accel_X-Axis_time_mean_Jerk",
             "Body_Accel_Y-Axis_time_mean_Jerk",
             "Body_Accel_Z-Axis_time_mean_Jerk",          
             "Body_Accel_X-Axis_time mean_std_dev",           
             "Body_Accel_Y-Axis_time mean_std_dev",
             "Body_Accel_Z-Axis_time mean_std_dev",
             "Body_Gyro_X-Axis_time_mean",
             "Body_Gyro_Y-Axis_time_mean",             
             "Body_Gyro_Z-Axis_time_mean", 
             "Body_Gyro_X-Axis_std_dev",
             "Body_Gyro_Y-Axis_std_dev",               
             "Body_Gyro_Z-Axis_std_dev",              
             "Body_Gyro_Jerk_X-Axis_time_mean",
             "Body_Gyro_Jerk_Y-Axis_time_mean",
             "Body_Gyro_Jerk_Z-Axis_time_mean",          
             "Body_Gyro_Jerk_X-Axis_time_std_dev",          
             "Body_Gyro_Jerk_Y-Axis_time_std_dev",
             "Body_Gyro_Jerk_Z-Axis_time_std_dev",
             "Body_Accel_Mag_time_mean",
             "Body_Accel_Mag_time_std_dev",              
             "Gravity_Accel_Mag_time_mean",
             "Gravity_Accel_Mag_time_std_dev",
             "Body_Accel_Jerk_Mag_time_mean",
             "Body_Accel_Jerk_Mag_time_std_dev",          
             "Body_Gyro_Mag_time_mean",
             "Body_Gyro_Mag_time_std_dev",             
             "Body_Gyro_Jerk_Mag_time_mean",
             "Body_Gyro_Jerk_Mag_time_std_dev",         
             "Body_Accel_mean_freq_X_Axis",
             "Body_Accel_mean_freq_Y_Axis",              
             "Body_Accel_mean_freq_Z_Axis",
             "Body_Accel_freq_X_Axis std_dev",               
             "Body_Accel_freq_Y_Axis std_dev",
             "Body_Accel_freq_Z_Axis std_dev",               
             "Body_Accel_mean_freq_X_Axis",
             "Body_Accel_mean_freq_Y_Axis",          
             "Body_Accel_mean_freq_Z_Axis",
             "Body_Accel_Jerk-X-Axis_freq_mean",          
             "Body_Accel_Jerk-Y-Axis_freq_mean",
             "Body_Accel_Jerk-Z-Axis_freq_mean",          
             "Body_Accel_Jerk-X-Axis_freq_std_dev",
             "Body_Accel_Jerk-Y-Axis_freq_std_dev",           
             "Body_Accel_Jerk-Z-Axis_freq_std_dev",
             "Body_Accel_Jerk-X-Axis-meanFreq",      
             "Body_Accel_Jerk-Y-Axis-meanFreq",
             "Body_Accel_Jerk-Z-Axis-meanFreq",      
             "Body_Gyro-X-Axis_freq_mean",
             "Body_Gyro-Y-Axis_freq_mean",             
             "Body_Gyro-Z-Axis_freq_mean",
             "Body_Gyro_X_Axis_freq_std_dev",              
             "Body_Gyro_Y_Axis_freq_std_dev",
             "Body_Gyro_Z_Axis_freq_std_dev",              
             "Body_Gyro-X-Axis_meanFreq",
             "Body_Gyro-Y-Axis_meanFreq",         
             "Body_Gyro-Z-Axis_meanFreq",
             "Body_Accel_Mag-freq_mean",             
             "Body_Accel_Mag-freq_std_dev",
             "Body_Accel_Mag-meanFreq",         
             "Body_Body_Accel_Jerk_Mag-mean",
             "Body_Body_Accel_Jerk_Mag-std_dev",      
             "Body_Body_Accel_Jerk_Mag-meanFreq",
             "Body_Body_Gyro_Mag-mean",        
             "Body_Body_Gyro_Mag-std_dev",
             "Body_Body_GyroMag-meanFreq",    
             "Body_Body_Gyro_Jerk_Mag-mean",
             "Body_Body_Gyro_Jerk_Mag-std_dev",     
             "Body_Body_Gyro_Jerk_Mag-meanFreq")
  names(alldata) <- descnames
  
  
  
  ## subset data to new tidy set that averages each actvity 
  ##and each subject
  s <- split(alldata, alldata$Activity)
  #newdata <- sapply(splitdata, function(x){
  #  colMeans(splitdata[, descnames[2:10]])
  #}
  #newdata <- colMeans(splitdata[1])
  sp <- sapply(s, function(s) {colMeans(s[,descnames[2:80]])})
  sp <- t(sp)
  
  ##write new tidy data file
  write.table(sp, file = "avgdata.dat")
  sp
  
}
