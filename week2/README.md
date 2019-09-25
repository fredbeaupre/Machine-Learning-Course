# Getting Started 
The main scripts for this assignment are `ex2.m` and `ex2_reg.m`, which implement logistic regression and regularized logistic regression, respectively. The datasets can be found in `ex2data1.txt` and `ex2data2.txt`. 
# Overview and Objectives
## Logistic Regression (Not Regularized)
In the first part of the assignment that implements logistic regression that is not regularized, the training set (x,y) `ex2data1.txt` contains a students' results from two exams (x) and whether or not they were accepted into a given university (y).  
The objective is to build a classification model that estimates an applicant's probability of admissions based on his scores on the two exams. The logistic regression algorithm uses the sigmoid hypothesis function. The parameters for logistic regression were learned using `fminunc`: an Octave/MATLAB built-in library function which is an optimization solver that finds the minimum of an unconstrained function. In sum, we use `fminunc` to find the best parameters for the logistic regression cost function given our dataset.  
### Tests
For a student with an Exam 1 score of 45 and an Exam 2 score of 85, you should expect to see an admission probability of 0.776.
## Regularized Logistic Regression
In the second part of the assignment, we use regularizzed logistic regression to predict wheter microchips from a fabrication plant passes quality assurance.  In `ex2data2.txt`, the training set (x,y) consists of test results on past microchips (x), and whether or not the microchips were accepted (y). Again, we use logistic regression and learn the parameters using `fminunc`, but this time, we add a regularization term to the cost function. 
