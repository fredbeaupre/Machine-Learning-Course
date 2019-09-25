# Getting Started
The main script for this assignment is `ex4.m`; it is generously commented so as to guide you through the other scripts. 
The data can be found in `ex4data1.mat`.
# Overview and Objectives
Following from the assignment of week 3, in this exercise we implement the backpropagation algorithm for neural networks and use it once more for hand-written digit recognition. 
While in week 3 we only implemented feedforward propagation with weights already provided, we now use the backpropagation algorithm to **learn** the parameters for the neural network.
The neural network model is illustrated ![HERE](https://github.com/fredbeaupre/Machine-Learning-Course/edit/master/week4/nn_model.png)  
After successfuly implementing the neural network cost function and gradient computation, we use `fmincg` to learn a good set of parameters.
## Tests
The training accuracy of the classifier should be about 95.3%, but this may vary by about 1% due to the random initialization of the parameters.
## TODO 
- Try to get a higher training accuracy by training the neural network for more iterations: it is possible to get a perfect fit.
