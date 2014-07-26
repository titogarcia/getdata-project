Code Book for "tidy.txt"
========================

subject
-------
Integer. Id of the subject who performed the activity measured.

activity
--------
String. Activity performed. Can be one of:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

Features
========
Measurements below are aggregated using mean of standard deviation and given by:

- axis: X, Y or Z
- magnitude: Mag,
- Jerk signals: Jerk,
- Jerk signal magnitude: JerkMag.

tBodyAcc
--------
Accelerometer measurements caused by body movement.

tGravityAcc
-----------
Accelerometer measurements caused by gravity.

tBodyGyro
---------
Gyroscope measurements caused by body.

fBodyAcc
--------
Fast Fourier Transform of tBodyAcc.

fBodyGyro
---------
Fast Fourier Transform of tBodyGyro.
         
