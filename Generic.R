library(shiny)
library(shinydashboard)

ui=shinyUI(
  dashboardPage(
    dashboardHeader(),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Dashbaord",id="dashboard",icon=icon("dashboard")),
        menuItem("Summary",id="summary",icon = icon("th")))
    ),
    dashboardBody()
  )
)


server=shinyServer(function(input,output){
  
})

shinyApp(ui,server)