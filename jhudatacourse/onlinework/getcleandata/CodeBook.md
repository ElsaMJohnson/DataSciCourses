###Column Definitions for tidydata.txt

Columns 3 to 68 are the averaged mean() and std() quantities from X_train.txt and X_test.txt files from the UCI HAR dataset.
Specific definitions follow

|[Column#]| "ColumnName"   	     |Description  |
|:--------|:---------------------|:---------------------------  
|[1]      |   "Subject"	      	 |Individuals testing device (30 total)  
|[2]      |    "Activity" 	      |6 levels of activity: Walking, walking upstairs, walking downstairs, sitting, standing, laying                 
|[3]-[5]  |"tBodyAccmean[XYZ]_ave"|	 Body acceleration averaged from mean measurements per individual per activiy in time domain in 3 directions (XYZ)  |
|[6]-[8]  | "tBodyAccstd[XYZ]_ave" |	 Average of body acceleration standard deviations per individual per activiy in time domain in 3 directions (XYZ)  |
|[9]-[11]  | "tGravityAccmean[XYZ]_ave" |  Gravity acceleration averaged from mean measurements per individual per activiy in time domain in 3 directions (XYZ)  |
|[12]-[14]  |"tGravityAccstd[XYZ]_ave"   |  Average of gravity acceleration standard deviations per individual per activiy in time domain in 3 directions (XYZ)  |
|[15]-[17]  |"tBodyAccJerkmean[XYZ]_ave" |  Jerk signals averaged from mean measurements per individual per activiy in time domain in 3 directions (XYZ)  |
|[18]-[20]  |"tBodyAccJerkstd[XYZ]_ave"  |  Average of jerk signal standard deviations per individual per activiy in time domain in 3 directions (XYZ)  |
|[21]-[23]  |"tBodyGyromean[XYZ]_ave" |     Gyroscope measurement averaged from mean measurements per individual per activiy in time domain in 3 directions (XYZ)  |
|[24]-[26]  |"tBodyGyrostd[XYZ]_ave"   |    Average of gyroscope standard deviations per individual per activiy in time domain in 3 directions (XYZ)  |
|[27]-[29]  |"tBodyGyroJerkmean[XYZ]_ave" | Gyroscope jerk signal averaged from mean measurements per individual per activiy in time domain in 3 directions (XYZ)  
|[30]-[32]  |"tBodyGyroJerkstd[XYZ]_ave" |   Average of gyroscope jerk signal standard deviations per individual per activiy in time domain in 3 directions (XYZ)  
|[33]  |"tBodyAccMagmean_ave"    |     Average of body acceleration magnitude mean measurements per individual per activiy in time domain|  
|[34]  |"tBodyAccMagstd_ave"      |    Average of body acceleration magnitude standard deviations per individual per activiy in time domain|  
|[35]  |"tGravityAccMagmean_ave"  |    Average of gravity acceleration magnitude mean measurements per individual per activiy in time domain  |
|[36]  |	   "tGravityAccMagstd_ave"   |    Average of gravity acceleration magnitude standard deviations per individual per activiy in time domain  |
|[37]  |   "tBodyAccJerkMagmean_ave"   |  Average of jerk signals magnitude mean measurements per individual per activiy in time domain  |
|[38]  |  "tBodyAccJerkMagstd_ave"  |    Average of jerk signals magnitude standard deviations per individual per activiy in time domain | 
|[39]  |  "tBodyGyroMagmean_ave"  |      Average of gyroscope magnitude mean measurements per individual per activiy in time domain  |
|[40]  |   "tBodyGyroMagstd_ave"    |     Average of gyroscope magnitude standard deviations per individual per activiy in time domain  |
|[41]  |   "tBodyGyroJerkMagmean_ave" |    Average of gyroscope jerk signal magnitude mean measurements per individual per activiy in time domain  |
[42]  |	   "tBodyGyroJerkMagstd_ave"    | Average of gyroscope jerk signal standard deviations per individual per activiy in time domain  
|[43]-[45]  | "fBodyAccmean[XYZ]_ave"     |  Body acceleration averaged from mean measurements per individual per activiy in frequency domain in 3 directions (XYZ)  |
|[46]-[48]  | "fBodyAccstd[XYZ]_ave"     |   Average of body acceleration standard deviations per individual per activiy in frequency domain in 3 directions (XYZ) | 
|[49]-[51]  | "fBodyAccJerkmean[XYZ]_ave" |  Jerk signals averaged from mean measurements per individual per activiy in frequency domain in 3 directions (XYZ)  |
|[52]-[54]  | "fBodyAccJerkstd[XYZ]_ave"  |  Average of jerk signal standard deviations per individual per activiy in frequency domain in 3 directions (XYZ)  
|[55]-[57]  |"fBodyGyromean[XYZ]_ave"  |    Gyroscope measurement averaged from mean measurements per individual per activiy in frequency domain in 3 directions (XYZ) | 
|[58]-[60]  |"fBodyGyrostd[XYZ]_ave"    |   Average of gyroscope jerk signal standard deviations per individual per activiy in frequency domain in 3 directions (XYZ) | 
|[61]  |"fBodyAccMagmean_ave"    |     Average of body acceleration magnitude mean measurements per individual per activiy in frequency domain  |
|[62]  |"fBodyAccMagstd_ave"     |     Average of body acceleration magnitude standard deviations per individual per activiy in frequency domain  |
|[63]  |"fBodyAccJerkMagmean_ave" |    Average of jerk signals magnitude mean measurements per individual per activiy in frequency domain  |
|[64]  |"fBodyAccJerkMagstd_ave"   |   Average of jerk signals magnitude standard deviations per individual per activiy in frequency domain  |
|[65]  |"fBodyGyroMagmean_ave"      |  Average of gyroscope magnitude mean measurements per individual per activiy in frequency domain  |
|[66]  |"fBodyGyroMagstd_ave"   |      Average of gyroscope magnitude standard deviations per individual per activiy in frequency domain  |
|[67]  |"fBodyGyroJerkMagmean_ave"  |  Average of gyroscope jerk signal magnitude mean measurements per individual per activiy in frequency domain  |
|[68]  |"fBodyGyroJerkMagstd_ave"   |  Average of gyroscope jerk signal standard deviations per individual per activiy in frequency domain|  
