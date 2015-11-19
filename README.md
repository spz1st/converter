## Shiny application: converter
This is a Shiny application that does conversion between metric units and
English units for temperature (Fahrenheit and Celsius), distance (miles and
kilometers) and valume (gallons and liters).

### Run the application

You can run the application in two ways:

  1. Visit the application page at the Shiny server:
  [https://spz1st.shinyapps.io/converter](https://spz1st.shinyapps.io/converter)

  2. Run the application in R console (with shiny installed).
     1. Download the two files, ui.R and server.R,
        into a directory on your local computer.
     2. In the R console:

        &gt; setwd('path/to/the/directory/with/the/two/files')

        &gt; library(shiny)

        &gt; runApp()

## HTML slides created with slidify

The file converter.Rmd is a file for making slide presentation
on the Shiny applicatin converter and the HTML slides can be created
with slidify in the R console as following:

    > library(slidify)

    > slidify("converter.Rmd")


The HTML file from slidify can be viewed at the following link:

[https://spz1st.github.io/converter/converter.html](https://spz1st.github.io/converter/converter.html)  (use the arrow keys to go through the slides)

