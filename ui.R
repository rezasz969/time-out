# library(shiny)
# library(shinydashboard)
# library(DT)
# library(dygraphs) # optional, used for dygraphs

ui <- dashboardPage(
  dashboardHeader(title = "Test"),
  dashboardSidebar(),
  dashboardBody(DTOutput("tbl"), tags$script(inactivity))
)
