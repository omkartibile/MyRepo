library(shiny)

ui=shinyUI(
  fluidPage(
    titlePanel("shiny button object"),
    sidebarLayout(
      sidebarPanel(
        numericInput("no1","Please enter the first number",value = 150),
        numericInput("no2","please enter the second number",value = 50),
        actionButton("btn","calculate")
      ),
      mainPanel(
        textOutput("total")
      )
    )
  )
)


server=shinyServer(function(input,output){
  calculate<-eventReactive(input$btn,{
    input$no1+input$no2
  })
  output$total<-renderText(
    calculate()
  )
})


shinyApp(ui,server)