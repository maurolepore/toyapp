library(shiny)

ui <- fluidPage(
  selectInput("package", "Select package", c("public", "private")),
  verbatimTextOutput("hi")
)

server <- function(input, output, session) {
  output$hi <- renderText({
    switch(input$package,
      "public" = toyhi::hi("I'm a public package"),
      "private" = toyhiprivate::hi("I'm a private package")
    )
  })
}

shinyApp(ui, server)
