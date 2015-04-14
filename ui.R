library(shiny)

# Define UI for application that calculates the estimated creatinine
# clearance rate (eCcr) using Cockcroft-Gault formula
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Estimated creatinine clearance rate calculator in R!"),
        
        helpText("The estimated creatinine clearance rate (eCcr) is an estimate 
        of one's glomerular filtration rate (GFR), which in turn, is a measure 
        of one's kidney function. The calculation in this simple demo interface
        is based on the Cockcroft-Gault formula. It ultilizes the measurement 
        of serum or plasma creatinine in computing the GFR, while adjusting 
        for mass, sex, and age. The normal range of GFR is 100-130 mL/min."),
                
        # Sidebar with inputs of radio buttons and numerics
        sidebarLayout(
                                
                sidebarPanel(
                        
                                                
                        radioButtons(
                                inputId  = "units",
                                label    = "Units for creatinine:",
                                choices  = c("umol/L" = 1, "mg/dL" = 2),
                                selected = 1
                        ),
                                                                      
                        radioButtons(
                                inputId  = "sex",
                                label    = "Sex:",
                                choices  = c("Male" = 1, "Female" = 2),
                                selected = 1
                        ),
                        
                        numericInput(
                                inputId = "age",
                                label = "Your age:",
                                value = 40
                        ),
                        
                        numericInput(
                                inputId = "weight",
                                label = "Your weight in kilogram:",
                                value = 60
                        ),
                        
                        numericInput(
                                inputId = "creat",
                                label = "Your serum/plasma creatinine:",
                                value = 110
                        )
                ),
                
                # Shows the input and calculation
                mainPanel(
                        
                        h3('Results of eCcr Calculation'),
                        br(),
                        h4('You entered sex:'),
                        verbatimTextOutput("inputsex"),
                        h4('Your entered age and weight:'),
                        verbatimTextOutput("inputageweight"),
                        h4('You entered creatinine value of:'),
                        verbatimTextOutput("inputcreat"),
                        h3('Which gives an eCcr of:'),
                        verbatimTextOutput("calc")
                )
        )
))