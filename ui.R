shinyUI(pageWithSidebar(
  headerPanel("Data Science!"),
  sidebarPanel(
    h3("Sidebar text"),
    numericInput('id1', 'Numeric Input, Labeled id1', 5, min=0,max=20, step=1),
    checkboxGroupInput('id2', 'Checkbox', 
                       c("Value 1" =1,
                         "Value 2" =10,
                         "Value 3" =3)),
    dateInput("date", "Date:"),
    submitButton("SUBMIT"),
    sliderInput("mu", "Enter Mean", value=50, min=50, max=74, step=2)
    ),
  mainPanel(
    h3("Main Panel"),
    h5("Outputs"),
    verbatimTextOutput("oid1"),
    verbatimTextOutput("oid2"),
    h6("Date:"),
    verbatimTextOutput("odate"),
    verbatimTextOutput("op"),
    plotOutput("newHist")
  )
))