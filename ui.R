library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Prepare for College!!!!"),
  sidebarPanel(
    h4('Estimating Return on Investment of College Expenditure'),
    textInput('name', 'Name', value=''),
    numericInput('semester', 'Number of Semesters', 4),
    numericInput('fees', 'Course Fees ($ Per Semester)', 10000),
    numericInput('semesterRent', 'Semester Rent ($)', 500),
    numericInput('foodSem', 'Food expenditure ($ per semester)', 1000),
    numericInput('suppSem', 'Cost of Supplements ($ per semester)', 500),
    numericInput('transSem', 'Transport ($ per semester)', 500),
    numericInput('miscSem', 'Miscellaneous ($ per semester)', 2000),
    numericInput('salary', 'Salary after employment ($ per month)', 5000),
    numericInput('savings', 'Expected Saving (%age of Salary)', 20)
  ),
  mainPanel(
    h4('Hi'),
    textOutput("name"),
    h4('Total Expenditure ($)'),
    textOutput("totalExpenditure"),
    h4('Savings Per month after Employment ($)'),
    textOutput("savingsPerMonth"),
	h4('No of months to break even the Investment'),
    textOutput("month"),
	br(),
    h4('Instructions'),
    helpText("This application is for a student to estimate the number of months it will take him to make a break even on his tuition fees for the college education after finding a job. This can be helpful for a aspiring student to manage his finances and by varying his savings each month he can expect to pay back the expenditure soon."),
    helpText("Enter the number of Semesters that the course will run and the fee for each semester. Then enter the different expenses you will have during the course. The application will calculate the number of months and display it.")
	)
))
