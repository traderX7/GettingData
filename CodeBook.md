CodeBook
===========
General
---------
This data set was provided by Samsung who has researched human activities detected from data measured by accelerometer and other devices in a smartphone. Now it's a good material for many disciplines of computational statistics . You can also download the data from UCI website (  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ). You will see source, data information and citation, etc. there.


Data Information
-----------------
The set of variables that were estimated from these signals are: 

mean(): Mean value 

std(): Standard deviation 

mad(): Median absolute deviation  

max(): Largest value in array 

min(): Smallest value in array 

sma(): Signal magnitude area 

energy(): Energy measure. Sum of the squares divided by the number of values . 
iqr(): Interquartile range  

entropy(): Signal entropy 

arCoeff(): Autorregresion coefficients with Burg order equal to 4 

correlation(): correlation coefficient between two signals 

maxInds(): index of the frequency component with largest magnitude 

meanFreq(): Weighted average of the frequency components to obtain a mean frequency 

I removed () and - from the names and replaced mean and std with "Mean" and "Std" for better readability. I didn't extracted meanFreq columns because they seem different from mean data (see above).

As a result, I got 75 columns (see the below) which is more by 7 columns than those who says "mean" or "std" involved columns are 66 on Forum. The reason of the difference is that I include something like "angle(tBodyAccMean,gravity)" but they don't. Maybe grep function worked differently. To be honest, I don't care so much, because  it's not so important thinking of the sequent analysis that will make a judgement which column is important for a model. 

  
"1" "Activity"
"2" "Subject"
"3" "tBodyAccMeanX"
"4" "tBodyAccMeanY"
"5" "tBodyAccMeanZ"
"6" "tBodyAccStdX"
"7" "tBodyAccStdY"
"8" "tBodyAccStdZ"
"9" "tGravityAccMeanX"
"10" "tGravityAccMeanY"
"11" "tGravityAccMeanZ"
"12" "tGravityAccStdX"
"13" "tGravityAccStdY"
"14" "tGravityAccStdZ"
"15" "tBodyAccJerkMeanX"
"16" "tBodyAccJerkMeanY"
"17" "tBodyAccJerkMeanZ"
"18" "tBodyAccJerkStdX"
"19" "tBodyAccJerkStdY"
"20" "tBodyAccJerkStdZ"
"21" "tBodyGyroMeanX"
"22" "tBodyGyroMeanY"
"23" "tBodyGyroMeanZ"
"24" "tBodyGyroStdX"
"25" "tBodyGyroStdY"
"26" "tBodyGyroStdZ"
"27" "tBodyGyroJerkMeanX"
"28" "tBodyGyroJerkMeanY"
"29" "tBodyGyroJerkMeanZ"
"30" "tBodyGyroJerkStdX"
"31" "tBodyGyroJerkStdY"
"32" "tBodyGyroJerkStdZ"
"33" "tBodyAccMagMean"
"34" "tBodyAccMagStd"
"35" "tGravityAccMagMean"
"36" "tGravityAccMagStd"
"37" "tBodyAccJerkMagMean"
"38" "tBodyAccJerkMagStd"
"39" "tBodyGyroMagMean"
"40" "tBodyGyroMagStd"
"41" "tBodyGyroJerkMagMean"
"42" "tBodyGyroJerkMagStd"
"43" "fBodyAccMeanX"
"44" "fBodyAccMeanY"
"45" "fBodyAccMeanZ"
"46" "fBodyAccStdX"
"47" "fBodyAccStdY"
"48" "fBodyAccStdZ"
"49" "fBodyAccJerkMeanX"
"50" "fBodyAccJerkMeanY"
"51" "fBodyAccJerkMeanZ"
"52" "fBodyAccJerkStdX"
"53" "fBodyAccJerkStdY"
"54" "fBodyAccJerkStdZ"
"55" "fBodyGyroMeanX"
"56" "fBodyGyroMeanY"
"57" "fBodyGyroMeanZ"
"58" "fBodyGyroStdX"
"59" "fBodyGyroStdY"
"60" "fBodyGyroStdZ"
"61" "fBodyAccMagMean"
"62" "fBodyAccMagStd"
"63" "fBodyBodyAccJerkMagMean"
"64" "fBodyBodyAccJerkMagStd"
"65" "fBodyBodyGyroMagMean"
"66" "fBodyBodyGyroMagStd"
"67" "fBodyBodyGyroJerkMagMean"
"68" "fBodyBodyGyroJerkMagStd"
"69" "angle(tBodyAccMean,gravity)"
"70" "angle(tBodyAccJerkMean),gravityMean)"
"71" "angle(tBodyGyroMean,gravityMean)"
"72" "angle(tBodyGyroJerkMean,gravityMean)"
"73" "angle(X,gravityMean)"
"74" "angle(Y,gravityMean)"
"75" "angle(Z,gravityMean)"

