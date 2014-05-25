###This R program is created for the course project on Getting and Cleaning Data.
###It plays a roll in the step of collecting and cleaning data.

#Set working directory and confirm if the directory exists or not
setwd("~/Coursera/GettingData")

if (!file.exists("UCI HAR Dataset")) {
  if (!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")) {
    stop("NO HAR Dataset folder or zip file. Prepare it first")
  } else {
    unzip("getdata_projectfiles_UCI HAR Dataset.zip")
  }
}

### First of all, read all files in R from folders
f.X_train<-read.table("./UCI HAR Dataset/train/X_train.txt",header=F)
f.y_train<-read.table("./UCI HAR Dataset/train/y_train.txt",header=F)
f.subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=F)

f.X_test<-read.table("./UCI HAR Dataset/test/X_test.txt",header=F)
f.y_test<-read.table("./UCI HAR Dataset/test/y_test.txt",header=F)
f.subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=F)

f.features<-read.table("./UCI HAR Dataset/features.txt",header=F)
f.activity<-read.table("./UCI HAR Dataset/activity_labels.txt",header=F)

### Set 1, merge train and testfiles (but not all) and check the dimentions
f.X<-rbind(f.X_train,f.X_test)
f.y<-rbind(f.y_train,f.y_test)
f.subject<-rbind(f.subject_train,f.subject_test)
dim(f.X) ;dim(f.y) ;dim(f.subject)

### Step 3 transform numeric data of y file to strings by using activity_labels file
f.ytxt<-f.activity[f.y[,1],2]

### Step 4 make readable column names (features file) to remove '()' and '-' 
### and use Camel style and add Subject and Activity for the next entire data file
f.colname<-gsub(pattern="\\(\\)",x=f.features[,2], replacement="")
f.colname<-gsub(patter="meanFreq",x=f.colname,replacement="MeaFreq")
f.colname<-gsub(patter="mean",x=f.colname,replacement="Mean")
f.colname<-gsub(patter="std",x=f.colname,replacement="Std")
f.colname<-gsub(patter="-",x=f.colname,replacement="")
f.colname<-c(f.colname,"Activity","Subject")

### combine X file, y file, and activity + subject files. And put readable column names. 
f.acsub<-cbind(f.ytxt, f.subject)
f.all<-cbind(f.X,f.acsub)
names(f.all)<-f.colname

### Step 2 extract measurements on the mean and std
f.MeanStd<-f.all[grep("Mean|Std", names(f.all))]
names(f.acsub)<-c("Activity","Subject")
f.step2<-cbind(f.MeanStd, f.acsub)

### Step 5 create the second tidy data with means by activity and subject
library(data.table)
dt.step2<-data.table(f.step2)
tidyData<-dt.step2[,lapply(.SD, mean), by=list(Activity, Subject)]  
TidyDataSet<-tidyData[order(Activity, Subject),]
head(TidyDataSet); dim(TidyDataSet)

### create a text file and store it. finished.
write.table(TidyDataSet,"tidydata.txt")

