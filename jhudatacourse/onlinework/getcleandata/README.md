##README for creating tidydata.txt file from UCI HAR dataset
__Contents__

_This repo contains_
* -README.md
* -CodeBook.md
* -run_analysis.R
* -tidydata.txt

Note! The script run_analysis.R runs within the UCI HAR Dataset directory.
The output, 'tidydata.txt' is output into the same working directory. 

####run_analysis.R description
------------------------------------------------------------
* run_analysis.R loads data from the train/ and test/ directories (not included
in this repo) containing:
	* X_[test,train].txt - a 561 feature vector of either 2947 (test) or 7352 (train)observations  
	* y_[test,train].txt - a one integer column denoting the activity per observation
	* subject_[test,train].txt - an integer column file representing specific individuals per observation

* features.txt is also loaded from the working directory. It contains the column
information for each of the 561 features of the X_*.txt files.

* Subject, X and Y files are combined (using cbind) for test and train data sets.
then both train and test sets are concatenated together using rbind. This 
"master" dataset is called simply 'dataset'.

* All column vector of column names are created using the feature.txt file 
labels and column vector containing  "Subject" and "Activity". This 
vector is changed into a row vector and applied to dataset using function
colnames.

* mean() and std() column data are now extracted using 'grep' function (along
with subject and activity columns). MeanFreq and other 'Mean' column 
information were not included as they are referring to other quantities. This
data is now stored in 'datasubset'. It consists of 68 columns.

* Characters '()' and '-' are removed from the column labels using gsub function

* Using revalue from the 'plyr' package, activity variables are changed from 
integers 1-6 to factors WALKING, SITTING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
 STANDING, LAYING, respectively

* Using ddply, each of the 66 measurements for each subject and activity in
datasubset are averaged. All columns except for activities and subject are
relabeled with '_ave' appended after each original label.

* This new data is stored in tidydata and written to a file called __'tidydata.txt'__
and saved in the working directory

