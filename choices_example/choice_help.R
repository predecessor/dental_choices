choices <- function(id, question, attributes) {
  
  
  fluidPage(
    fluidRow(
      column(4, question)
    ),
    
    lapply(attributes, choice_column),
    
    radioButtons(id, label = h3("Choose Option"),
                 choices = list("Alternative 1" = 1, "Alternative 2" = 2, "Alternative 3" = 3,
                                "None of the Above" = ""),
                 selected = character(0))
  )
}

choice_column <- function(attributes, ...) {
  n <- names(attributes)
  v <- attributes
  column(2, ...,
         fluidRow("Alternative"),
         fluidRow(tags$b(paste0(n[1], ":", v[1]))),
         fluidRow(paste0(n[2], ":", v[2])),
         fluidRow(paste0(n[3], ":", v[3]))
  )
}