## converter
This is a Shiny application that does conversion between metric units
English units for temperature (Fahrenheit and Celsius), distance (miles and
kilometers) and valume (gallons and liters).

### Run the application

You can run the application in two ways:

  1. Visit the application page at the Shiny server:
  [https://spz1st.shinyapps.io/converter](https://spz1st.shinyapps.io/converter)

  2. Run the application in R console (with shiny install).
     1. Download the two files, ui.R and server.R,
        into a directory on your local computer.
     2. In the R console:
        > setwd('path/to/the/directory/with/the/two/files')
        > library(shiny)
        > runApp()
