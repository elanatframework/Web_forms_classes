## How to work with WebForms Core in R (Shiny framework)

To use WebForms Core, first copy the WebForms class file in this directory to your project. Then create a new View file similar to the one below.

```r
library(shiny)

ui <- fluidPage(
    titlePanel("Using WebForms Core"),
    tags$head(
        tags$script(src = "/script/web-forms.js")
    ),
    sidebarLayout(
        sidebarPanel(
            textInput("txt_Name", "Your Name"),
            numericInput("txt_FontSize", "Set Font Size", value = 16, min = 10, max = 36),
            textInput("txt_BackgroundColor", "Set Background Color"),
            actionButton("btn_SetBodyValue", "Click to send data")
        ),
        mainPanel(
            uiOutput("response")
        )
    )
)

server <- function(input, output, session) {
    
    observeEvent(input$btn_SetBodyValue, {
        Name <- input$txt_Name
        BackgroundColor <- input$txt_BackgroundColor
        FontSize <- as.numeric(input$txt_FontSize)
        
        form <- WebForms()

        form$setFontSize(InputPlace$tag("form"), FontSize)
        form$setBackgroundColor(InputPlace$tag("form"), BackgroundColor)
        form$setDisabled(InputPlace$name("btn_SetBodyValue"), TRUE)

        form$addTag(InputPlace$tag("form"), "h3")
        form$setText(InputPlace$tag("h3"), paste("Welcome", Name, "!"))

        output$response <- renderUI({
            HTML(form$response())
        })
    })
}

shinyApp(ui = ui, server = server)
```

In the upper part of the View file, it is first checked whether the submit button has been clicked or not, if it has been clicked, an instance of the WebForms class is created, then the WebForms methods are called, and then the response method is printed on the screen, and other parts Views are not displayed.
Please note that if the submit button is not clicked (initial request), the view page will be displayed completely for the requester.

As you can see, the WebFormsJS script has been added in the header section of the View file above.

The latest version of the WebFormsJS script is available through the link below.

https://github.com/elanatframework/Web_forms/blob/elanat_framework/web-forms.js