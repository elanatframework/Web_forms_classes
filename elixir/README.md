## How to work with WebForms Core in Elixir (Phoenix framework)

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
  <form method="post" action="<%= Routes.form_path(@conn, :create) %>">

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
```elixir
defmodule MyAppWeb.FormController do
  use MyAppWeb, :controller

  alias MyApp.WebForms

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, %{"txt_Name" => name, "txt_BackgroundColor" => background_color, "txt_FontSize" => font_size}) do
    font_size = String.to_integer(font_size)

    form = %WebForms{}

    form =
      form
      |> WebForms.set_font_size(InputPlace.tag("form"), font_size)
      |> WebForms.set_background_color(InputPlace.tag("form"), background_color)
      |> WebForms.set_disabled(InputPlace.name("btn_SetBodyValue"), true)
      |> WebForms.add_tag(InputPlace.tag("form"), "h3")
      |> WebForms.set_text(InputPlace.tag("h3"), "Welcome #{name}!")

    response = WebForms.response(form)

    conn
    |> put_flash(:info, response)
    |> redirect(to: "/")
  end
end
```

In the upper part of the View file, it is first checked whether the submit button has been clicked or not, if it has been clicked, an instance of the WebForms class is created, then the WebForms methods are called, and then the response method is printed on the screen, and other parts Views are not displayed.
Please note that if the submit button is not clicked (initial request), the view page will be displayed completely for the requester.

As you can see, the WebFormsJS script has been added in the header section of the View file above.

The latest version of the WebFormsJS script is available through the link below.

https://github.com/elanatframework/Web_forms/blob/elanat_framework/web-forms.js