# Getting Started
The main scripts are `ex6.m` and `ex6_spam.m`. The first one uses Gaussian kernels with Support Vector Machines to compress images with various 2D datasets. The second one uses SVMs to build a e-mail spam filter.
# Overview
The spam filter part of the exercise trains a classifier to classify whether or not a given email (x) is spam(y=1) or non-spam(y=0).  
To do so, we first convert the email into a feature vector. We then preprocess the emails as follows:
- Lower-casing: The entire email is converted into lower case, so that capitalization is ignored.
- Stripping HTML: All HTML tags are removed from the emails, so that only content remains.
- Normalizing URLs: All URLs are replaced with the text "httpaddr"
- Normalizing Email Addresses: All email addresses are replaced with the text "emailaddr"
- Normalizing Numbers: All numbers are replaced with the text "number"
- Normalizing Dollars: All dollar signs ($) are replaced with the text "dollar"
- Word Stemming: Words are reduced to their stemmed form. For example, "discount", "discounts", "discounted" and "discounting" are all replaced with "discount". 
- Removal of non-words: Non-words and punctuation have been removed. All white spaces have been trimmed to a single space character. 
Then we have a vocab list, which contains words that occured at least a 100 times in the spam corpus, resulting in a list of 1899. We will use this list to train the SVM as follows:  
The code is given a str which is a single word from a processed email. It looks up the word in the vocab list and finds if the word exists in there. If it does, it adds the index of the word to a `word_indices` variable.

Thus using a vocab list (`vocab.txt`), the training set `spamTest.mat` of preprocessed emails is used to train the SVM classifier. Then the SVM classifies the test set `spamTest.mat`.
