server <- function(input, output, session) {
  
  
  
  observe({
    input$submit1
    
    isolate({
      if(length(input$block11) == 0 || length(input$block12) == 0 || length(input$block13) == 0) {
        return()
      }
    })
    
    updateNavbarPage(session, "navbar", selected = "choices2")
  })
  
  
  observe({
    input$submit2
  })
  
}