
This is the README file for Class Project for the Coursera Course "Getting and Cleaning Data"

The data set may be loaded by using the command:
read.table("avgdata.dat")  [assumes avgdata.dat is in working directory]

Please note that the data set is a 180 x 79 tidy data set as each variable is a single column, and each row is a single observation 

The origin of the data for this project is as follows:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

*****************************************************
The data for this data set has been limited by instruction to only the subset of the 561 variables that are mean and standard deviation summaries (79 variables). Further, test and training portions of the data have been recombined. Where the initial data was labeled by a code for activity, these data have had the description of the activity inserted (1 = Laying, for example). The titles for the variables have been modified to be more explicit and descriptive. 

The dataset includes the following files:
=========================================

- 'README.md': this file

- 'CodeBook.md': Describes the variables used in the analysis.

- 'run_analysis.R': Code used in the analysis

- 'avgdata.dat': A new tidy data set prepared by instruction to be mean summaries of the selected mean and standard deviation variables.

The data set may be loaded by using the command:
read.table("avgdata.dat")

The 79 variables (see CodeBook.md) are broken down by pphysical activities: Laying, Sitting, Standing, Walking, Walking_Downstairs, and Walking_Upstairs.



Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws


