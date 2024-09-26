## How to work with WebForms Core in Java (Spring Boot framework)

To use WebForms Core, first copy the WebForms class file in this directory to your project. Then create a new View file similar to the one below.

View file
```html
<!DOCTYPE html>
<html>
<head>
  <title>Using WebForms Core</title>
  <script type="text/javascript" src="/script/web-forms.js"></script>
</head>
<body>
    <form method="post" action="/" >
        <label for="txt_Name">Your Name</label>
        <input name="txt_Name" id="txt_Name" type="text" />
        <br>
        <label for="txt_FontSize">Set Font Size</label>
        <input name="txt_FontSize" id="txt_FontSize" type="number" value="16" min="10" max="36" />
        <br>
        <label for="txt_BackgroundColor">Set Background Color</label>
        <input name="txt_BackgroundColor" id="txt_BackgroundColor" type="text" />
        <br>
        <input name="btn_SetBodyValue" type="submit" value="Click to send data" />
    </form>
</body>
</html>
```

Also, create a Controller class file as follows.

Controller class
```csharp
package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {

    @PostMapping("/")
    public String handleFormSubmission(
            @RequestParam(name = "txt_Name", required = false) String name,
            @RequestParam(name = "txt_BackgroundColor", required = false) String backgroundColor,
            @RequestParam(name = "txt_FontSize", required = false, defaultValue = "16") int fontSize,
            @RequestParam(name = "btn_SetBodyValue", required = false) String button) {
        
        if (button != null) {
            WebForms form = new WebForms();
            
            form.setFontSize(InputPlace.tag("form"), fontSize);
            form.setBackgroundColor(InputPlace.tag("form"), backgroundColor);
            form.setDisabled(InputPlace.name("btn_SetBodyValue"), true);
            
            form.addTag(InputPlace.tag("form"), "h3", null);
            form.setText(InputPlace.tag("h3"), "Welcome " + name + "!");

            return form.response();
        }
    }
}
```

In the upper part of the View file, it is first checked whether the submit button has been clicked or not, if it has been clicked, an instance of the WebForms class is created, then the WebForms methods are called, and then the response method is printed on the screen, and other parts Views are not displayed.
Please note that if the submit button is not clicked (initial request), the view page will be displayed completely for the requester.

As you can see, the WebFormsJS script has been added in the header section of the View file above.

The latest version of the WebFormsJS script is available through the link below.

https://github.com/elanatframework/Web_forms/blob/elanat_framework/web-forms.js