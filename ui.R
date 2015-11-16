library(shiny)

choices = c("F to C", "C to F",
            "Mile to Km", "Km to Mile",
            "Gallon to Liter",
            "Liter to Gallon")

shinyUI (
  pageWithSidebar (
    headerPanel(
      HTML("</h1>",
        "<div><h3>Conversion between Metric Units and English Units</h3>",
        "<hr><h4>Document</h4>",
        "The application does the following conversions:",
        "<ul><br>",
        "<li>F to C: convert degrees from Fahrenheit to Celsius</li>",
        "<li>C to F: convert degrees from Celsius to Fahrenheit</li>",
        "<li>Mile to Kilometer: convert distance from miles to kilometers</li>",
        "<li>Kilometer to Mile: convert distance from kilometers to miles</li>",
        "<li>Gallon to Liter: convert volume from gallons to liters</li>",
        "<li>Liter to Gallon: convert volume from liters to gallons</li>",
        "</ul><hr>",
        "<h4>Application</h4>",
        "</div><h1>"
      ),
      "Conversion between Metric Units and English Units"
    ),
    sidebarPanel(
      selectInput('type', 'Select conversion type:', choices),
      numericInput('num', 'Enter value to convert:', 1),
      submitButton('Convert')
    ),
    mainPanel (
      h3 ("Result:"),
      verbatimTextOutput("result")
    )
  )
)
