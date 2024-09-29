## How to work with WebForms Core in Rust (Actix-web framework)

To use WebForms Core, first copy the WebForms class file in this directory to your project. Then create a new View file similar to the one below.

```rust
use actix_web::{web, App, HttpResponse, HttpServer, Responder};
use actix_web::middleware::Logger;

#[derive(Debug, Deserialize)]
struct FormData {
    txt_name: String,
    txt_backgroundcolor: String,
    txt_fontsize: i32,
    btn_setbodyvalue: Option<String>,
}

async fn index() -> HttpResponse {
    let html = r#"
    <!DOCTYPE html>
    <html>
    <head>
      <title>Using WebForms Core</title>
      <script type="text/javascript" src="/script/web-forms.js"></script>
    </head>
    <body>
        <form method="post" action="/submit" >
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
    <body>
    </html>
    "#;

    HttpResponse::Ok()
       .content_type("text/html")
       .body(html)
}

async fn submit_form(form: web::Form<FormData>, web_form: web::Data<WebForms>) -> impl Responder {
    let name = &form.txt_name;
    let background_color = &form.txt_backgroundcolor;
    let font_size = form.txt_fontsize;

    web_form.set_font_size(InputPlace::tag("form"), font_size);
    web_form.set_background_color(InputPlace::tag("form"), background_color.clone());
    web_form.set_disabled(InputPlace::name("btn_SetBodyValue"), true);
    web_form.add_tag(InputPlace::tag("form"), "h3");
    web_form.set_text(InputPlace::tag("h3"), format!("Welcome {}!", name));

    HttpResponse::Ok().body(web_form.response())
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let web_form = WebForms::new();

    HttpServer::new(move || {
        App::new()
            .app_data(web::Data::new(web_form.clone()))
            .wrap(Logger::default())
            .route("/", web::get().to(index))
            .route("/submit", web::post().to(submit_form))
    })
    .bind("127.0.0.1:8080")?
    .run()
    .await
}
```

In the upper part of the View file, it is first checked whether the submit button has been clicked or not, if it has been clicked, an instance of the WebForms class is created, then the WebForms methods are called, and then the response method is printed on the screen, and other parts Views are not displayed.
Please note that if the submit button is not clicked (initial request), the view page will be displayed completely for the requester.

As you can see, the WebFormsJS script has been added in the header section of the View file above.

The latest version of the WebFormsJS script is available through the link below.

https://github.com/elanatframework/Web_forms/blob/elanat_framework/web-forms.js