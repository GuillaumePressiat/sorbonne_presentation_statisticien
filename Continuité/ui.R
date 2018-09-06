library(shiny)

# Define UI for random distribution application
shinyUI(fluidPage(

  # Application title
  titlePanel("Discret ou continu, histogrammes ou densités"),

  # Sidebar with controls to select the random distribution type
  # and number of observations to generate. Note the use of the
  # br() element to introduce extra vertical spacing
  sidebarLayout(position="right",
    sidebarPanel(
      radioButtons("dist", "Distribution",
                   c("Normale" = "norm",
                     "Uniforme" = "unif",
                     "Log-normale" = "lnorm",
                     "Exponentielle" = "exp")),
      br(),

      sliderInput("n",
                  "Nombre d'observations :",
                   value = 700,
                   min = 300,
                   max = 5000000)
    ,
    sliderInput("bins",
                "Nombre de barres :",
                value = 30,
                min = 1,
                max = 200)
  ),
    # Show a tabset that includes a plot, summary, and table view
    # of the generated distribution
    mainPanel(
      tabsetPanel(type = "tabs",
        tabPanel("Plot", plotOutput("plot")),
        tabPanel("Summary", verbatimTextOutput("summary"))#,
        #tabPanel("Table", tableOutput("table"))
      )
    )
  )
))
