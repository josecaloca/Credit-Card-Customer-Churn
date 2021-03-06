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

![DM Project (1)](https://user-images.githubusercontent.com/59198442/124361982-9a4ac900-dc32-11eb-8668-8fbf3b494a4a.png)

Imbalanced target variable.

Most of the customer didn’t churn 8.6% of the total

![alt text](https://documentation.sas.com/api/docsets/emref/15.1/content/images/varsel_icon.png?locale=en)

In this node we identify input variables which are useful for predicting the target variable or variables.

We use the Chi-square selection criterion.(Method available only for binary variables)

- Number of Bins: default 50

- Maximum Pass Number: default 6

- Minimum Chi-Square: default 3.84

![DM Project (2)](https://user-images.githubusercontent.com/59198442/124362016-d2eaa280-dc32-11eb-9f5a-f777b525dcde.png)

Variables with a Chi-square statistic
higher than 3.84 will be accepted
for training the model.Since we 
reject the null hypothesis that our 
feature is independent from the 
target variable.

![DM Project (3)](https://user-images.githubusercontent.com/59198442/124362054-0c231280-dc33-11eb-92f8-f4037ce450ad.png)

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

![DM Project (6)](https://user-images.githubusercontent.com/59198442/124362153-a5522900-dc33-11eb-9b00-062633f81db2.png)

When using the variable selection method before:

![DM Project (7)](https://user-images.githubusercontent.com/59198442/124362216-eba78800-dc33-11eb-818d-03e113ceb565.png)

Interactive binning results using Gini Statistic as variable selection method. Group rare levels with cutoff value percentage of 0.5

---
Model
---

### Decision Trees 

![alt text](https://documentation.sas.com/api/docsets/emref/14.3/content/images/treeicon.png?locale=en)

- **Decision Tree (1)**: 

&nbsp;
Variable selection & clustering. 

&nbsp;
Target criterion = Gini Coef

&nbsp;
Leaf size = 5

&nbsp;

- **Decision Tree (2):**

&nbsp;
Interactive Binning without variable selection or clustering.

&nbsp;
Target criterion = Gini Coef

&nbsp;
Leaf size = 50

&nbsp;


- **Decision Tree (3):**

&nbsp;
Without binning, variable selection or clustering. 

&nbsp;Target criterion = Gini Coef

&nbsp;Leaf size = 5


&nbsp;
![DM Project (8)](https://user-images.githubusercontent.com/59198442/124362267-2dd0c980-dc34-11eb-883a-b082fd8e77de.png)

The ROC curve above shows a comparison of the three different decision trees. Sensitivity is on the vertical axis and plots the true positive rate while specificity is on the horizontal axis and observes the false positive rate. Performance is greatest when maximizing true positive rate while minimizing false positives. ROC curve sensitivity dips in test set meaning higher false positives. Model is a bit too overtrained.  

![DM Project (9)](https://user-images.githubusercontent.com/59198442/124362265-2c9f9c80-dc34-11eb-8c98-8f84c019f61d.png)


### Logistic Regression

![alt text](https://documentation.sas.com/api/docsets/emref/14.3/content/images/regression_icon.png?locale=en)

- Logistic Regression(1): Variable selection & interactive binning. Selection model - stepwise. 

- Logistic Regression(2): Variable selection & stepwise selection model. 

- Logistic Regression(3): Variable selection with no selection model. 

![DM Project (10)](https://user-images.githubusercontent.com/59198442/124362449-25c55980-dc35-11eb-89ea-06be24db20da.png)

The first regression model has the strongest predictive power of the three per the smallest misclassification rate of .081935. 

![DM Project (11)](https://user-images.githubusercontent.com/59198442/124362447-24942c80-dc35-11eb-8132-4fe59aade5fd.png)

Order of importance of grouped variables in the stepwise selection process with a p-value lower than 0.05


![DM Project (12)](https://user-images.githubusercontent.com/59198442/124362476-5ad1ac00-dc35-11eb-93ae-30559ff4b8a0.png)

### Gradient Boosting Model 

Since this is a classification problem we decided to use misclassification as our assessment criteria. The misclassification rates are impressively low:
- Train - .035
- Valid - .028
- Test - .030

![DM Project (13)](https://user-images.githubusercontent.com/59198442/124362601-2f02f600-dc36-11eb-9c03-658d98b3df74.png)


Results from the gradient boosting model indicate these variables as most important:
- Total_Trans_Ct
- Total_Trans_Amt
- Total_Revolving_Bal

![DM Project (14)](https://user-images.githubusercontent.com/59198442/124362604-30342300-dc36-11eb-81c4-1129bb0c769d.png)


Gradient Boosting is tree based algorithm that improves itself by building off the previous tree. By nature prone to overfitting. 
Lowest misclassification rate around the 200th iteration. 


![DM Project (15)](https://user-images.githubusercontent.com/59198442/124362603-30342300-dc36-11eb-91b1-10963f918970.png)


### Final Model Assessment

**Sensitivity vs specificity:**

![DM Project (16)](https://user-images.githubusercontent.com/59198442/124362748-24952c00-dc37-11eb-8555-0d5d5e3180c3.png)


Gradient boosting was able to most accurately predict customers going to churn and predict customers not going to churn based on the largest AUC. 

![DM Project (17)](https://user-images.githubusercontent.com/59198442/124362751-25c65900-dc37-11eb-91a5-f4883205f902.png)
Observing the cumulative lift, gradient boosting is able to provide a better prediction rate of the three models up to the first 50% of observations. 

![DM Project (18)](https://user-images.githubusercontent.com/59198442/124362750-25c65900-dc37-11eb-8358-d47e48f32710.png)
