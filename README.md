# Analysis of Amazon Vine Reviews

## Purpose

The purpose of this analysis was to determine if there was any positivity bias in the Vine program by analyzing Amazon reviews written by Vine members and non-Vine members. The analysis involved extracting a dataset from Amazon S3, transforming the data using PySpark, loading it into an AWS RDS instance, and then using SQL to analyze the data.

## Results
<img width="255" alt="paid" src="https://user-images.githubusercontent.com/114922260/221025893-007cae3b-80a5-47c3-8f31-97d396d9532c.png">

<img width="262" alt="not_paid" src="https://user-images.githubusercontent.com/114922260/221025920-3c3d55f8-9d4b-42bf-b22a-cad86db0a0b7.png">

### Number of Vine and Non-Vine Reviews
There were 266 Vine reviews and 38,829 non-Vine reviews in the dataset.

### Number of 5-Star Vine and Non-Vine Reviews
There were 125 5-star Vine reviews and 18,246 5-star non-Vine reviews in the dataset.

### Percentage of 5-Star Vine and Non-Vine Reviews
The percentage of 5-star Vine reviews was 46.992%.
The percentage of 5-star non-Vine reviews was 46.990%.

## Summary
Based on the analysis, there is no conclusive evidence of a significant positivity bias for reviews in the Amazon Vine program. Both Vine and non-Vine reviews had almost the same percentage of 5-star ratings.
One additional analysis that could be done to support this statement is to compare the average star rating of Vine and non-Vine reviews. If there was a positivity bias, we would expect to see a higher average star rating for Vine reviews compared to non-Vine reviews.
