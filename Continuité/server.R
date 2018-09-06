library(shiny)

# Define server logic for random distribution application
shinyServer(function(input, output) {

  # Reactive expression to generate the requested distribution.
  # This is called whenever the inputs change. The output
  # functions defined below then all use the value computed from
  # this expression
  data <- reactive({
    dist <- switch(input$dist,
                   norm = rnorm,
                   unif = runif,
                   lnorm = rlnorm,
                   exp = rexp,
                   rnorm)

    dist(input$n)

  })
  ddata <- reactive({
    ddist <- switch(input$dist,
                   norm = dnorm,
                   unif = dunif,
                   lnorm = dlnorm,
                   exp = dexp,
                   rnorm)

    data.frame(x=seq(min(data()),max(data()),by=0.01),y=ddist(seq(min(data()),max(data()),by=.01)))
  })


  # Generate a plot of the data. Also uses the inputs to build
  # the plot label. Note that the dependencies on both the inputs
  # and the data reactive expression are both tracked, and
  # all expressions are called in the sequence implied by the
  # dependency graph
  output$plot <- renderPlot({
    dist <- input$dist
    n <- input$n
    bins <- seq(min(data()), max(data()), length.out = input$bins+1)

    par(new=TRUE)
    hist(data(),prob=T,breaks = bins,xlab="",ylab="Prob.",
         main="", col='cornflowerblue',
         border = 'white')
    lines(ddata()$x,ddata()$y, col='red3', lwd=1.5)
  })

  # Generate a summary of the data
  output$summary <- renderPrint({
    summary(ddata())
  })

  # Generate an HTML table view of the data
  output$table <- renderTable({
    data.frame(x=data())
  })

})
