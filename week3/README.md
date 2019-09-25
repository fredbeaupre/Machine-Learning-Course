# Getting Started
The main scripts for this assignment are `ex3.m` and `ex3_nn.`, which implement One vs. All Classification and a shallow neural network, respectively. The datasets can be found in `ex3data1.mat` and the inital weights for the neural networks are in `ex3weights.mat`.
# Overview and Objectives
The objective here is to implement one vs. all classification and neural networks to recognize handwritten digits.
## One vs. All classification
In the first part of the exercises, we extend our previous implementation of logistic regression (week 2), and build a multi-class classification model.
This is done by training multiple regularized logistic regression classifiers, one for each of the 10 classes in the dataset (one class for each handwritten digit from 0 to 9).  
**Note** that the code should workd for any number K of classes.  
Once the one vs. all classifier is trained, we use it to predict the digit contained in a given image. For each input, we compute the probability that it belongs to each class and output the highest one.  
### Tests
You should see a training set accuracy of about 94.9%, i.e., 94.9% of the examples are classified correctly.
## Neural Networks
The same training set is used here.  
The goal is to implement the feedforward propagation to use the predetermined weights in `ex3weights.mat`.
### Tests
You should see an improved accuracy for the neural network (97.5%).

