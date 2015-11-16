library(shiny)

kpm = 1.6093   # kilometers per mile
opl = 35.1951  # fluid oz per liter
lpg = 3.7854   # liters per gallon

f2c = function(f){   # convert F to C

  paste(c(f, 'F =', sprintf("%.2f", (f-32) * 5 / 9), 'C'), sep=' ')
  # (f-32) * 5 / 9
}

c2f = function(c){   # convert C to F
  paste(c(c, 'C =', sprintf("%.2f", c * 9 / 5 + 32), 'F'), sep=' ')
}

m2k = function(m){   # convert miles to kilometers
  result = as.numeric(sprintf("%.3f", m * kpm))

  if(m == 1) mile = 'mile ='
  else mile = 'miles ='

  if(result == 1) kilo = 'kilometer'
  else kilo = 'kilometers'
  
  paste(c(m, mile, result, kilo), sep=' ')
}

k2m = function(k){   # convert kilometers to miles
  result = as.numeric(sprintf("%.3f", k / kpm))

  if(k == 1) kilo = 'kilometer ='
  else kilo = 'kilometers ='
  
  if(result == 1) mile = 'mile'
  else mile = 'miles'

  paste(c(k, kilo, result, mile), sep=' ')
}

g2l = function(g){   # convert gallons to liters
  result = as.numeric(sprintf("%.3f", g * lpg))

  if(g == 1) gallon = 'gallon ='
  else gallon = 'gallons ='

  if(result == 1) liter = 'liter'
  else liter = 'liters'

  paste(c(g, gallon, result, liter), sep=' ')
}

l2g = function(l){   # convert liters to gallons
  result = as.numeric(sprintf("%.3f", l / lpg))

  if(l == 1) liter = 'liter ='
  else liter = 'liters ='

  if(result == 1) gallon = 'gallon'
  else gallon = 'gallons'


  paste(c(l, liter, result, gallon), sep=' ')
}

shinyServer(
  function(input, output){ 
    # renderImage({})
    # renderPlot({})
    # renderPrint({})
    # renderTable({})
    # renderText({})
    # renderUI({})
    output$result = renderText({
      if(!is.na(input$num)){
        if(grep('^\\s*-?\\d+\\s*$', as.character(input$num), perl=T))
        {
          if(input$type == 'F to C') f2c(input$num)
          else if(input$type == 'C to F') c2f(input$num)
          else if(input$type == 'Mile to Km') m2k(input$num)
          else if(input$type == 'Km to Mile') k2m(input$num)
          else if(input$type == 'Gallon to Liter') g2l(input$num)
          else if(input$type == 'Liter to Gallon') l2g(input$num)
          else 'invalid select' 
        }
        else 'invalid input' 
      }
      else {
        'empty input' 
      }
      # input$num 
     })
  }
)
