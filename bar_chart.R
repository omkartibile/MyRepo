library(shiny)
library(shinydashboard)

ui=shinyUI(
  dashboardPage(
    dashboardHeader(),
    dashboardSidebar(),
    dashboardBody(
      fluidPage(
        titlePanel("Bar chart"),
        sidebarLayout(
          sidebarPanel(
            checkboxInput("sidebar","create sidebar")
          ),
          mainPanel(plotOutput("bar")
          )
        )
      )
    )
  )
)



server=shinyServer(function(input,output){
  output$bar<-renderPlot({
    bar2=tapply(mtcars$mpg,list(mtcars$am,mtcars$gear),mean)
    barplot(bar2,beside = input$sidebar)
  })
  
})


shinyApp(ui,server)