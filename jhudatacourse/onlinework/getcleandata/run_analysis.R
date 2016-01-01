run_analysis<-function(){

##load files
xtr<-read.table("train//X_train.txt", header=FALSE)
ytr<-read.table("train//y_train.txt", header=FALSE)
subtr<-read.table("train//subject_train.txt", header=FALSE)
ytt<-read.table("test//y_test.txt", header=FALSE)
tt<-read.table("test//X_test.txt", header=FALSE)
xtt<-read.table("test//X_test.txt", header=FALSE)
subtt<-read.table("test//subject_test.txt", header=FALSE)
feat<-read.table("features.txt") ## using this for columns names


##combine x,y and subj using cbind
trset<-cbind(subtr,ytr,xtr)
ttset<-cbind(subtt,ytt,xtt)

##Merge it all together!
##combine test and training with cbind
dataset<-rbind(trset,ttset)

## Now label columns:
##column names for subject and activity
newcols<-matrix(c("Subject","Activity"), nrow=2, ncol=1) 
## Append these col names to the other col name vector from feature.txt
cnames<-append(newcols,as.character(feat[,2]))
##Change cname column vector to row vector
cnames<-matrix(cnames,nrow=1,ncol=length(cnames))
colnames(dataset)<-cnames

##2. Now extract std and mean by searching via grep
pttrn<-c("std","mean\\(\\)","Activity","Subject")
goodcols<-grep(paste(pttrn,collapse="|"),names(dataset))
##New subset of dataset called datasubset
datasubset<-dataset[goodcols]

##Clean up names
##using gsub to get rid of '()' and '-' and extra 'Body' in labels
colsubnames<-names(datasubset)
colsubnames<-gsub("\\(\\)","",colsubnames)
colsubnames<-gsub("\\-","",colsubnames)
colsubnames<-gsub("BodyBody","Body",colsubnames)
colnames(datasubset)<-colsubnames

##3 Change the integers for Activity to the actual Activity labels
##need plyr
install.packages("plyr")
library(plyr)
datasubset$Activity<-as.factor(datasubset$Activity)
datasubset$Activity<-revalue(datasubset$Activity,c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING"))

##4. Done already. See steps starting at line 20

##5. Find average of each col and put into tidy data per activity per subject
tidydata<-ddply(datasubset,.(Subject,Activity),numcolwise(mean))
##rename the columns by adding ave at the end of each column name
colnames(tidydata)<-c("Subject","Activity",paste(colnames(tidydata[,3:68]),"_ave",sep=""))
## save tidydata to a text file:
write.table(tidydata,file="tidydata.txt", row.name=FALSE)
}



