---
title: "Peer-graded Assignment - Course Project: Shiny Application"
author: "Sergiy Redchyts"
date: '5th October 2016'
---


# Shiny app simulating retirement cash-flow scenarios

For a direct access to this Shiny application, click [here](http://redchyts.shinyapps.io/RedchytsWork/)

This README file is the supporting documentation accompagning this Shiny application. It includes three parts: 

1. Instructions given for this project
2. Description of this Shiny application
3. Directives on how to visualize this Shiny application

### 1. Instructions given for this project

1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application. 
2. Deploy the application on Rstudio's shiny server.
3. Share the application link by pasting it into the text box below. 
4. Share your server.R and ui.R code on github. 

The application must include the following:

1. Some form of input (widget: textbox, radio button, checkbox, ...).
2. Some operation on the ui input in sever.R.
3. Some reactive output displayed as a result of server calculations.
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.

The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.  

### 2. Description of this Shiny application

This Shiny application (*'Redchyts_Work'*) acquires input values from the user to perform *k-means clustering* on a *mtcars* data set.

**mtcars datasets** provides *Motor Trend Car Road Tests*

Description

The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

A data frame with 32 observations on 11 variables.

[, 1]	 mpg	 Miles/(US) gallon
[, 2]	 cyl	 Number of cylinders
[, 3]	 disp	 Displacement (cu.in.)
[, 4]	 hp	 Gross horsepower
[, 5]	 drat	 Rear axle ratio
[, 6]	 wt	 Weight (1000 lbs)
[, 7]	 qsec	 1/4 mile time
[, 8]	 vs	 V/S
[, 9]	 am	 Transmission (0 = automatic, 1 = manual)
[,10]	 gear	 Number of forward gears
[,11]	 carb	 Number of carburetors
Source

Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411.

**k-means clastering**

The data given by x are clustered by the k-means method, which aims to partition the points into k groups such that the sum of squares from points to the assigned cluster centres is minimized. At the minimum, all cluster centres are at the mean of their Voronoi sets (the set of data points which are nearest to the cluster centre).

The algorithm of Hartigan and Wong (1979) is used by default. Note that some authors use k-means to refer to a specific algorithm rather than the general method: most commonly the algorithm given by MacQueen (1967) but sometimes that given by Lloyd (1957) and Forgy (1965). The Hartigan–Wong algorithm generally does a better job than either of those, but trying several random starts (nstart> 1) is often recommended. In rare cases, when some of the points (rows of x) are extremely close, the algorithm may not converge in the “Quick-Transfer” stage, signalling a warning (and returning ifault = 4). Slight rounding of the data may be advisable in that case.

For ease of programmatic exploration, k=1 is allowed, notably returning the center and withinss.

Except for the Lloyd–Forgy method, k clusters will always be returned if a number is specified. If an initial matrix of centres is supplied, it is possible that no point will be closest to one or more centres, which is currently an error for the Hartigan–Wong method.

This Shiny application displays k-means clastering graph illustrating partition of observations (choosen by custoemr) into k clusters (inputed by customer) 


### 3. Directives on how to visualize this Shiny application

Option 1: Direct link: click [here](http://redchyts.shinyapps.io/RedchytsWork/)

Option 2: Download the `server.R` and `ui.R` files and place them in a directory named *'RedchytsWork'*. 
Open an R session and set the working directory to the folder that contains the directory *'RedchytsWork'*. Then run the following commands:

```
library(shiny)
runApp('Redchyts_Work')
```