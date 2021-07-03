# Credit Scoring Model Comparison
Predictive Credit Scoring using Machine Learning algorithms under the SEMMA methodology in SAS Entreprise Miner

The dataset used can be found by clicking [here](https://www.kaggle.com/sakshigoyal7/credit-card-customers)

---

# Project Introduction and Goals

Introduction: 
---
Customer churn, also known as customer attrition is the loss of clients or customers. Banks rely on exploratory data analysis and predictive techniques to discover most striking behaviors of customers most likely to churn. 

---
Aim of the project
---
Build a model that determines most prominent characteristics of customers most likely to churn on their credit card service so banks can be proactive and prevent customer attrition. 

---
Strategy
---
Use SAS Enterprise Miner following SEMMA methodology to compare prediction effectiveness of the following models:
- Decision Trees
- Logistic Regression
- Gradient Boosting

---
Hypothesis
---
Total Transaction Count (Last 12 months) better explains that a customer will churn rather than Age and credit limit of the customer. 
We expect the best model to perform in the gradient boosting, a widely used model in credit scoring modelling. [ZhenyaTian, 2020](https://doi.org/10.1016/j.procs.2020.06.070)

---
Bank Churners Dataset Description
---

- 21 Variables
- 6 Class variables
- 15 numerical variables (ordinal and interval)
- No missing values

---
Diagram
---

![Diagram](https://user-images.githubusercontent.com/59198442/124361004-fb6f9e00-dc2c-11eb-8e7e-6b8d49b9bfce.jpg)

---
Sample
---
![alt text](https://documentation.sas.com/api/docsets/emref/14.3/content/images/partition_icon.png?locale=en)

- Training set: 80%
- Validation set: 10%
- Test set: 10%

---
Explore
---
![alt text](https://documentation.sas.com/api/docsets/emref/14.3/content/images/graph_explore_icon.png?locale=en)

Imbalanced target variable.

Most of the customer didn’t churn 8.6% of the total

![alt text](https://documentation.sas.com/api/docsets/emref/15.1/content/images/varsel_icon.png?locale=en)

In this node we identify input variables which are useful for predicting the target variable or variables.

We use the Chi-square selection criterion.(Method available only for binary variables)

- Number of Bins: default 50

- Maximum Pass Number: default 6

- Minimum Chi-Square: default 3.84


Variables with a Chi-square statistic
higher than 3.84 will be accepted
for training the model.Since we 
reject the null hypothesis that our 
feature is independent from the 
target variable.

![alt text](https://documentation.sas.com/api/docsets/emref/14.3/content/images/varclusico.png?locale=en)


This node helps us to choose the best variables or cluster components for analysis.

Variable clustering removes collinearity, decreases variable redundancy, and helps reveal the underlying structure of the input variables in a data set.

Since clustering source is based on the covariance matrix, variables with larger variances have more importance in the analysis

We include class variables through the use of dummy variables

We keep hierarchies on in order to create a hierarchical cluster structure

---
Modify
---

![alt text](https://documentation.sas.com/api/docsets/emref/15.1/content/images/binning_icon.png?locale=en)

When using the variable selection method before:


When using the variable selection method before:


Interactive binning results using Gini Statistic as variable selection method. Group rare levels with cutoff value percentage of 0.5

---
Model
---

### Decision Trees ![alt text](https://documentation.sas.com/api/docsets/emref/14.3/content/images/treeicon.png?locale=en)

- Decision Tree (1): 

&nbsp;
Variable selection & clustering. 

&nbsp;
Target criterion = Gini Coef

&nbsp;
Leaf size = 5

&nbsp;

Decision Tree (2):

&nbsp;
Interactive Binning without variable selection or clustering.

&nbsp;
Target criterion = Gini Coef

&nbsp;
Leaf size = 50

&nbsp;


Decision Tree (3):

&nbsp;
Without binning, variable selection or clustering. 

&nbsp;Target criterion = Gini Coef

&nbsp;Leaf size = 5


The ROC curve above shows a comparison of the three different decision trees. Sensitivity is on the vertical axis and plots the true positive rate while specificity is on the horizontal axis and observes the false positive rate. Performance is greatest when maximizing true positive rate while minimizing false positives. ROC curve sensitivity dips in test set meaning higher false positives. Model is a bit too overtrained.  

