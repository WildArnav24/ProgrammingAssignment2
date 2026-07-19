# Code Book

## Project Overview

This code book describes the tidy data set created for the Getting and
Cleaning Data Course Project.

The source data come from the Human Activity Recognition Using Smartphones
data set. The study collected accelerometer and gyroscope measurements from
30 participants while they performed six different activities.

The final tidy data set is created by `run_analysis.R` and saved as:

`tidy_data.txt`

---

## Relationship to the Original Code Books

This code book updates the documentation supplied with the original UCI
Human Activity Recognition data set to describe the tidy data set created
for this project.

The original feature definitions were used as the starting point. This code
book documents:

- The variables retained from the original data
- The descriptive names assigned to those variables
- The units and meanings of the variables
- The transformations performed during the cleaning process
- The new summary values calculated for each subject and activity combination

The final measurement variables contain the average of each retained
`mean()` and `std()` measurement for every subject and activity.

Variables containing `meanFreq()` were not included because they represent
weighted frequency averages rather than direct mean measurements.

---

## Source Data

The original data set contains measurements collected from the accelerometer
and gyroscope of a Samsung Galaxy S II smartphone worn on the waist.

The original data were divided into training and test data sets. The analysis
combines both sets into one complete data set.

The important original files are:

- `features.txt`: names of the original measurement variables
- `activity_labels.txt`: activity numbers and descriptive activity names
- `train/X_train.txt`: training measurement data
- `train/y_train.txt`: training activity identifiers
- `train/subject_train.txt`: training subject identifiers
- `test/X_test.txt`: test measurement data
- `test/y_test.txt`: test activity identifiers
- `test/subject_test.txt`: test subject identifiers

---

## Final Tidy Data Set

The final tidy data set contains:

- 180 rows
- 68 columns
- 30 subjects
- 6 activities
- 66 summarized measurement variables

Each row represents one unique combination of subject and activity.

Each measurement value is the arithmetic mean of that measurement for the
corresponding subject and activity.

Since there are 30 subjects and 6 activities, the final data set contains:

`30 subjects × 6 activities = 180 rows`

---

## Identifier Variables

### `Subject`

Identifies the participant who performed the activity.

Possible values:

`1` through `30`

Unit:

Participant identification number.

### `Activity`

Describes the activity performed by the participant.

Possible values:

- `WALKING`
- `WALKING_UPSTAIRS`
- `WALKING_DOWNSTAIRS`
- `SITTING`
- `STANDING`
- `LAYING`

Unit:

Categorical activity label.

---

## Measurement Units

The original accelerometer and gyroscope measurements were processed,
normalized, and bounded within the range:

`-1` to `1`

The measurement variables in the final tidy data set are therefore unitless
normalized values.

Each value in the final data set is the arithmetic mean of the corresponding
normalized measurement for one subject and one activity.

Because averages were calculated from normalized values, the final summarized
measurements remain unitless.

---

## Variable Name Components

The measurement variable names use descriptive terms based on the original
feature names.

### Signal domain

- `Time`: a time-domain signal
- `Frequency`: a frequency-domain signal created using a Fast Fourier Transform

### Sensor type

- `Accelerometer`: measurement obtained from the smartphone accelerometer
- `Gyroscope`: measurement obtained from the smartphone gyroscope

### Signal source

- `Body`: movement associated with the participant's body
- `Gravity`: acceleration associated with gravity

### Measurement type

- `Jerk`: rate of change of acceleration or angular velocity
- `Magnitude`: magnitude of a three-dimensional signal
- `Mean`: mean of the original signal
- `StandardDeviation`: standard deviation of the original signal

### Measurement axis

Some variables end with:

- `X`
- `Y`
- `Z`

These indicate the measurement axis.

---

## Measurement Variables

The final tidy data set contains the following 66 measurement variables.

### Time-Domain Accelerometer Variables

- `TimeBodyAccelerometerMeanX`
- `TimeBodyAccelerometerMeanY`
- `TimeBodyAccelerometerMeanZ`
- `TimeBodyAccelerometerStandardDeviationX`
- `TimeBodyAccelerometerStandardDeviationY`
- `TimeBodyAccelerometerStandardDeviationZ`
- `TimeGravityAccelerometerMeanX`
- `TimeGravityAccelerometerMeanY`
- `TimeGravityAccelerometerMeanZ`
- `TimeGravityAccelerometerStandardDeviationX`
- `TimeGravityAccelerometerStandardDeviationY`
- `TimeGravityAccelerometerStandardDeviationZ`

### Time-Domain Accelerometer Jerk Variables

- `TimeBodyAccelerometerJerkMeanX`
- `TimeBodyAccelerometerJerkMeanY`
- `TimeBodyAccelerometerJerkMeanZ`
- `TimeBodyAccelerometerJerkStandardDeviationX`
- `TimeBodyAccelerometerJerkStandardDeviationY`
- `TimeBodyAccelerometerJerkStandardDeviationZ`

### Time-Domain Gyroscope Variables

- `TimeBodyGyroscopeMeanX`
- `TimeBodyGyroscopeMeanY`
- `TimeBodyGyroscopeMeanZ`
- `TimeBodyGyroscopeStandardDeviationX`
- `TimeBodyGyroscopeStandardDeviationY`
- `TimeBodyGyroscopeStandardDeviationZ`

### Time-Domain Gyroscope Jerk Variables

- `TimeBodyGyroscopeJerkMeanX`
- `TimeBodyGyroscopeJerkMeanY`
- `TimeBodyGyroscopeJerkMeanZ`
- `TimeBodyGyroscopeJerkStandardDeviationX`
- `TimeBodyGyroscopeJerkStandardDeviationY`
- `TimeBodyGyroscopeJerkStandardDeviationZ`

### Time-Domain Magnitude Variables

- `TimeBodyAccelerometerMagnitudeMean`
- `TimeBodyAccelerometerMagnitudeStandardDeviation`
- `TimeGravityAccelerometerMagnitudeMean`
- `TimeGravityAccelerometerMagnitudeStandardDeviation`
- `TimeBodyAccelerometerJerkMagnitudeMean`
- `TimeBodyAccelerometerJerkMagnitudeStandardDeviation`
- `TimeBodyGyroscopeMagnitudeMean`
- `TimeBodyGyroscopeMagnitudeStandardDeviation`
- `TimeBodyGyroscopeJerkMagnitudeMean`
- `TimeBodyGyroscopeJerkMagnitudeStandardDeviation`

### Frequency-Domain Accelerometer Variables

- `FrequencyBodyAccelerometerMeanX`
- `FrequencyBodyAccelerometerMeanY`
- `FrequencyBodyAccelerometerMeanZ`
- `FrequencyBodyAccelerometerStandardDeviationX`
- `FrequencyBodyAccelerometerStandardDeviationY`
- `FrequencyBodyAccelerometerStandardDeviationZ`

### Frequency-Domain Accelerometer Jerk Variables

- `FrequencyBodyAccelerometerJerkMeanX`
- `FrequencyBodyAccelerometerJerkMeanY`
- `FrequencyBodyAccelerometerJerkMeanZ`
- `FrequencyBodyAccelerometerJerkStandardDeviationX`
- `FrequencyBodyAccelerometerJerkStandardDeviationY`
- `FrequencyBodyAccelerometerJerkStandardDeviationZ`

### Frequency-Domain Gyroscope Variables

- `FrequencyBodyGyroscopeMeanX`
- `FrequencyBodyGyroscopeMeanY`
- `FrequencyBodyGyroscopeMeanZ`
- `FrequencyBodyGyroscopeStandardDeviationX`
- `FrequencyBodyGyroscopeStandardDeviationY`
- `FrequencyBodyGyroscopeStandardDeviationZ`

### Frequency-Domain Magnitude Variables

- `FrequencyBodyAccelerometerMagnitudeMean`
- `FrequencyBodyAccelerometerMagnitudeStandardDeviation`
- `FrequencyBodyAccelerometerJerkMagnitudeMean`
- `FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation`
- `FrequencyBodyGyroscopeMagnitudeMean`
- `FrequencyBodyGyroscopeMagnitudeStandardDeviation`
- `FrequencyBodyGyroscopeJerkMagnitudeMean`
- `FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation`

---

## Examples of Variable Names

### `TimeBodyAccelerometerMeanX`

The average of the time-domain body acceleration mean measurement along the
X-axis for one subject and one activity.

### `TimeBodyAccelerometerStandardDeviationY`

The average of the time-domain body acceleration standard deviation
measurement along the Y-axis for one subject and one activity.

### `FrequencyBodyGyroscopeMeanZ`

The average of the frequency-domain body gyroscope mean measurement along the
Z-axis for one subject and one activity.

### `TimeGravityAccelerometerMagnitudeMean`

The average mean magnitude of the time-domain gravity acceleration signal for
one subject and one activity.

---

## Transformations Performed

The following transformations were performed by `run_analysis.R`.

### 1. Downloaded and extracted the source data

The course-provided ZIP file was downloaded and extracted into the working
directory.

### 2. Read the feature and activity documentation

The script read:

- The original feature names from `features.txt`
- The activity numbers and labels from `activity_labels.txt`

### 3. Combined the training and test measurements

The training and test measurement files were combined by rows.

### 4. Combined the activity identifiers

The training and test activity files were combined by rows.

### 5. Combined the subject identifiers

The training and test subject files were combined by rows.

### 6. Assigned feature names

The original feature names from `features.txt` were assigned to the
measurement columns.

### 7. Selected mean and standard-deviation measurements

Only variables containing either of the following were retained:

- `mean()`
- `std()`

Variables containing `meanFreq()` were excluded because they do not represent
direct mean measurements.

### 8. Added descriptive activity names

The original numeric activity identifiers were replaced with:

- `WALKING`
- `WALKING_UPSTAIRS`
- `WALKING_DOWNSTAIRS`
- `SITTING`
- `STANDING`
- `LAYING`

### 9. Created descriptive variable names

The original abbreviations were replaced with clearer terms.

The following replacements were made:

- `t` at the beginning of a variable name became `Time`
- `f` at the beginning of a variable name became `Frequency`
- `Acc` became `Accelerometer`
- `Gyro` became `Gyroscope`
- `Mag` became `Magnitude`
- `mean()` became `Mean`
- `std()` became `StandardDeviation`

Parentheses and hyphens were removed from the final variable names.

Repeated text such as `BodyBody` was replaced with `Body`.

### 10. Combined the subject, activity, and measurement data

The subject identifiers, descriptive activity labels, and selected
measurements were combined into one cleaned data set.

### 11. Created the summarized tidy data set

The arithmetic mean of every retained measurement was calculated for each
combination of:

- `Subject`
- `Activity`

### 12. Sorted the final data

The final tidy data set was sorted by subject and activity.

### 13. Exported the final data

The tidy data set was written to:

`tidy_data.txt`

The file was created using `write.table()` with:

```r
row.names = FALSE
