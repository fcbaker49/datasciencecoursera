Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals Accelorometer-XYZ and Gyro-XYZ. These time domain signals (indicated by the word time in their variable name) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Body_Accel-XYZ and Gravity_Accel-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Body_Accel_Jerk-XYZ and Body_Gyro_Jerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Body_Accel_Mag, Gravity_Accel_Mag, Body_Accel_Jerk_Mag, Body_Gyro_Mag, Body_Gyro_Jerk_Mag). All of these signals have time, in seconds as thier unit value.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals (indicated by freq in the name) producing Body_Accel-XYZ, Body_Accel_Jerk-XYZ, Body_Gyro-XYZ, Body_Acc_JerkMag, Body_GyroMag, Body_GyroJerkMag. These signals have frequency in Hz as their units.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean: Mean value
std_dev: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

For each of these, an average was taken for each of 30 subjects over six potential activities: Laying, Sitting, Standing, Walking, Walking_Downstairs and Walking_Upstairs and presented in the tidy data set. 


The complete list of variables of each feature vector is available is listed below. Variables with time in the name are in units of seconds, variables with freq are in units of Hertz.

1             "Body_Accel_X-Axis_time_mean",
2             "Body_Accel_Y-Axis_time_mean", 
3             "Body_Accel_Z-Axis_time_mean", 
4             "Body_Accel_X_Axis_time_std_dev" , 
5             "Body_Accel_Y_Axis_time_std_dev",
6             "Body_Accel_Z_Axis_time_std_dev",
7             "Gravity_Accel_X-Axis_time_mean", 
8             "Gravity_Accel_Y-Axis_time_mean",           
9             "Gravity_Accel_Z-Axis_time_mean",
10             "Gravity_Accel_X-Axis_time_std_dev",
11             "Gravity_Accel_Y-Axis_time_std_dev",
12             "Gravity_Accel_Z-Axis_time_std_dev",            
13             "Body_Accel_X-Axis_time_mean_Jerk",
14             "Body_Accel_Y-Axis_time_mean_Jerk",
15             "Body_Accel_Z-Axis_time_mean_Jerk",          
16             "Body_Accel_X-Axis_time mean_std_dev",           
17             "Body_Accel_Y-Axis_time mean_std_dev",
18             "Body_Accel_Z-Axis_time mean_std_dev",
19             "Body_Gyro_X-Axis_time_mean",
20             "Body_Gyro_Y-Axis_time_mean",             
21             "Body_Gyro_Z-Axis_time_mean", 
22             "Body_Gyro_X-Axis_std_dev",
23             "Body_Gyro_Y-Axis_std_dev",               
24             "Body_Gyro_Z-Axis_std_dev",              
25             "Body_Gyro_Jerk_X-Axis_time_mean",
26             "Body_Gyro_Jerk_Y-Axis_time_mean",
27             "Body_Gyro_Jerk_Z-Axis_time_mean",          
28             "Body_Gyro_Jerk_X-Axis_time_std_dev",          
29             "Body_Gyro_Jerk_Y-Axis_time_std_dev",
30             "Body_Gyro_Jerk_Z-Axis_time_std_dev",
31             "Body_Accel_Mag_time_mean",
32             "Body_Accel_Mag_time_std_dev",              
33             "Gravity_Accel_Mag_time_mean",
34             "Gravity_Accel_Mag_time_std_dev",
35             "Body_Accel_Jerk_Mag_time_mean",
36             "Body_Accel_Jerk_Mag_time_std_dev",          
37             "Body_Gyro_Mag_time_mean",
38             "Body_Gyro_Mag_time_std_dev",             
39             "Body_Gyro_Jerk_Mag_time_mean",
40             "Body_Gyro_Jerk_Mag_time_std_dev",         
41             "Body_Accel_mean_freq_X_Axis",
42             "Body_Accel_mean_freq_Y_Axis",              
43             "Body_Accel_mean_freq_Z_Axis",
44             "Body_Accel_freq_X_Axis std_dev",               
45             "Body_Accel_freq_Y_Axis std_dev",
46             "Body_Accel_freq_Z_Axis std_dev",               
47             "Body_Accel_mean_freq_X_Axis",
48             "Body_Accel_mean_freq_Y_Axis",          
49             "Body_Accel_mean_freq_Z_Axis",
50             "Body_Accel_Jerk-X-Axis_freq_mean",          
51             "Body_Accel_Jerk-Y-Axis_freq_mean",
52             "Body_Accel_Jerk-Z-Axis_freq_mean",          
53             "Body_Accel_Jerk-X-Axis_freq_std_dev",
54             "Body_Accel_Jerk-Y-Axis_freq_std_dev",           
55             "Body_Accel_Jerk-Z-Axis_freq_std_dev",
56             "Body_Accel_Jerk-X-Axis-meanFreq",      
57             "Body_Accel_Jerk-Y-Axis-meanFreq",
58             "Body_Accel_Jerk-Z-Axis-meanFreq",      
59             "Body_Gyro-X-Axis_freq_mean",
60             "Body_Gyro-Y-Axis_freq_mean",             
61             "Body_Gyro-Z-Axis_freq_mean",
62             "Body_Gyro_X_Axis_freq_std_dev",              
63             "Body_Gyro_Y_Axis_freq_std_dev",
64             "Body_Gyro_Z_Axis_freq_std_dev",              
65             "Body_Gyro-X-Axis_meanFreq",
66             "Body_Gyro-Y-Axis_meanFreq",         
67             "Body_Gyro-Z-Axis_meanFreq",
68             "Body_Accel_Mag-freq_mean",             
69             "Body_Accel_Mag-freq_std_dev",
70             "Body_Accel_Mag-meanFreq",         
71             "Body_Body_Accel_Jerk_Mag-mean",
72             "Body_Body_Accel_Jerk_Mag-std_dev",      
73             "Body_Body_Accel_Jerk_Mag-meanFreq",
74             "Body_Body_Gyro_Mag-mean",        
75             "Body_Body_Gyro_Mag-std_dev",
76             "Body_Body_GyroMag-meanFreq",    
77             "Body_Body_Gyro_Jerk_Mag-mean",
78             "Body_Body_Gyro_Jerk_Mag-std_dev",     
79             "Body_Body_Gyro_Jerk_Mag-meanFreq"
