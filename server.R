source("./Probfunction.R")

shinyServer(function(input, output) {
        output$input <- renderText({
                
                paste0("Your car's displacements and weight are", "<strong>", input$disp, " cu. in.", " & ", input$wt, " lb, respectively", "</strong>")
        })
        
        output$result <- renderText({
                probval = Probfunction(disp = input$disp, wt = input$wt) 
     
                paste0("The predicted probability that your car is a V-engine is", "<code>", round(probval, 2), "</code>")
        })
                
})