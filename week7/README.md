# Getting Started 
The main scripts for this exercise are `ex7.m` and `ex7_pca.m`. They implement the K-means Clustering Algorithm for image compression and Principal Component Analysis to find low-dimensional representation of face images, respectively. Training sets are in `ex7data1.mat`, `ex7data2.mat` and `ex7faces.mat`.
# Overview
In the first part of the exercise, we first use the K-means clustering algorithm for compressing 2D images. After that, we use it for image compression by reducing the number of colors that occur in an image to only those that are most common in that image. The algorithm assigns each training example to its closest centroid, compute the centroids means and iterates.  
In the second part of the exercise, we use PCA to perform dimensionality reduction. We first experiment with an example 2D dataset, and then on a bigger dataset of 5000 faces.
