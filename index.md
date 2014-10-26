---
title       : Months to BreakEven
subtitle    : For your college investments/loan
author      : Rachit Kulshrestha
job         : R student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Description

My shiny app will help a student to estimate the number of months to break even on his educational investments/loan.

Can be helpful for a student to estimate the number of months it will take him to make a break even on his tuition fees for the college education after finding a job.
This can assist an aspiring student to manage his finances and by varying his savings each month he can expect to pay back the expenditure soon.


---
## Details

I have taken into account the number of semester the course will run for. Most of the courses run for 4 semesters and the default value is given as 4.
Next we have to ask a student about the course fee in ($) for a semester. 

After this the student can input his basic expected or incumbent expenditure while he is studying. We assume that the student was not earning any money during the course. 

The next question is to ask the student his current salary/expected salary after he gets employment and how much percentage he expects to save.

Based on all this information we will calculate the number of months to pay for his complete expense during college.


---
## Calculation

The calculation is divided into three parts. 
1- The total amount of expenditure
2- The savings per month
3- Number of months to break even

Here is the sample code for the calculation


```r
calculateTotalExpenditure <- function(fees, semesterRent, foodSem, transSem, suppSem, miscSem, semester) 
{
  result <- semester*(fees+semesterRent+suppSem+transSem+miscSem+foodSem)
  return(round(result, digits = 2))
}

calculateSavingsPerMonth <- function(salary,savings) 
{
  result <- savings*salary/100
  return(round(result, digits = 2))
}
```


---
## Lessons learned

- The simple application gave me an insight into manipulating input and output with ShinyApps.

- Had difficulty in using the variables inside the Server.R and hence had to calculate the final "no of months" parameter using all input variables. 

- Need to improve on the UI and data handling inside the application, but I was content with my first attempt. 

---
## Conclusion

- This was just a base version of this application and I would go on to develope a much more advanced version, hope that it helps lot of students like me.

- R is a very handy platform to learn and utilize new tools, Shiny apps and slidify make it possible to create simple applications and deploy it for the world to see. Very excited!! 
