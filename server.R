library(shiny)
shinyServer(
  function(input, output){
    output$totalExpenditure <- renderText({ calculateTotalExpenditure(input$fees, input$semesterRent, input$foodSem, input$transSem, input$suppSem, input$miscSem, input$semester) })
    output$savingsPerMonth <- renderText({calculateSavingsPerMonth(input$salary, input$savings)})
    
	output$month <- renderText({calculateMonthsToBreakEven(input$fees, input$semesterRent, input$foodSem, input$transSem, input$suppSem, input$miscSem, input$semester,input$salary, input$savings)})
  }
)

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

calculateMonthsToBreakEven <- function(fees, semesterRent, foodSem, transSem, suppSem, miscSem, semester,salary, savings)
{
  result <- semester*(fees+semesterRent+suppSem+transSem+miscSem+foodSem)/(savings*salary/100)
  
  return(round(result, digits = 2))
}
