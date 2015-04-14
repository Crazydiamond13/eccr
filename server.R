library(shiny)

source("./eccr.R")

# Define server logic required to calculate estimated creatinine clearance rate
shinyServer(function(input, output) {
        
        output$inputsex <- renderPrint({
                if(input$sex == male) {
                        paste("Male")      
                }
                else{
                        paste("Female")
                }
        })
                
        output$inputageweight <- renderPrint({
                paste(input$age, "years old and", input$weight, "kg")})
        output$inputcreat <- renderPrint({
                if(input$units == umoll) {
                        paste(input$creat, "umol/L")      
                }
                else{
                        paste(input$creat,"mg/dL")
                }
        })                                  
        output$calc <- renderPrint(paste( {eccr(input$age, input$weight, 
                input$sex, input$creat, input$units)},"mL/min"))
})