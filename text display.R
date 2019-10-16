library(shiny)

ui=fluidPage(
  titlePanel("this is demo app"),
  sidebarLayout(
    sidebarPanel(
      textInput("txtinput","input the text to display")
    ),
    mainPanel(
      paste("you are entering:"),
      textOutput("textOutput")
    
    )
  )
)

server=shinyServer(function(input,output){
  output$textOutput=renderText({
    paste(input$txtinput)
  })
})

shinyApp(ui=ui,server=server)