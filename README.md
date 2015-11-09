# Polynomial-Regression
To test which value of d is good for this dataset, I let d value from 0 to 50 and find the one that minimizes test error. 
Concerning testing error, it should be calculated from testing data points, which are randomly selected from the whole dataset. 
In this case with 500 data, I use 10-fold cross validation that divides the whole dataset into 10 subsets and randomly select one set as testing dataset and the other 9 as training data. 
Thus, I should have about 50 testing data points, and 450 as training data. I fit the model with training data, and then check the fitness with testing data. 
With the function of "polyreg.m", both training error and testing error can be presented.
From the output of a figure, we can see the "elbow" of testing error denoted by red line occurs when the highest order of parameter takes a value of around 6. 
Thus, it is reasonable to let d to be 6. Moreover, when increasing d over 25, the testing error goes up due to overfitting effect.
