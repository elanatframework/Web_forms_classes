use std::collections::HashMap;

#[derive(Default)]
struct NameValueCollection {
    data: HashMap<String, String>,
}

impl NameValueCollection {
    fn add(&mut self, key: String, value: String) {
        self.data.insert(key, value);
    }

    fn get(&self, key: &str) -> Option<&String> {
        self.data.get(key)
    }

    fn get_list(&self) -> Vec<(String, String)> {
        self.data.iter().map(|(k, v)| (k.clone(), v.clone())).collect()
    }

    fn change_name_by_index(&mut self, index: usize, new_name: String) {
        if let Some((key, value)) = self.data.iter_mut().nth(index) {
            let value_clone = value.clone();
            self.data.remove(key);
            self.data.insert(new_name, value_clone);
        }
    }

    fn get_name_by_index(&self, index: usize) -> Option<String> {
        self.data.iter().nth(index).map(|(k, _)| k.clone())
    }
}

#[derive(Default)]
pub struct WebForms {
    web_forms_data: NameValueCollection,
}

impl WebForms {
    // Add Methods
    pub fn add_id(&mut self, input_place: &str, id: &str) {
        self.web_forms_data.add(format!("ai{}", input_place), id.to_string());
    }

    pub fn add_name(&mut self, input_place: &str, name: &str) {
        self.web_forms_data.add(format!("an{}", input_place), name.to_string());
    }

    pub fn add_value(&mut self, input_place: &str, value: &str) {
        self.web_forms_data.add(format!("av{}", input_place), value.to_string());
    }

    pub fn add_class(&mut self, input_place: &str, class: &str) {
        self.web_forms_data.add(format!("ac{}", input_place), class.to_string());
    }

    pub fn add_style(&mut self, input_place: &str, style: &str) {
        self.web_forms_data.add(format!("as{}", input_place), style.to_string());
    }

    pub fn add_option_tag(&mut self, input_place: &str, text: &str, value: &str, selected: bool) {
        self.web_forms_data.add(format!("ao{}", input_place), format!("{}|{}{}", value, text, if selected { "|1" } else { "" }));
    }

    pub fn add_checkbox_tag(&mut self, input_place: &str, text: &str, value: &str, checked: bool) {
        self.web_forms_data.add(format!("ak{}", input_place), format!("{}|{}{}", value, text, if checked { "|1" } else { "" }));
    }

    pub fn add_title(&mut self, input_place: &str, title: &str) {
        self.web_forms_data.add(format!("al{}", input_place), title.to_string());
    }

    pub fn add_text(&mut self, input_place: &str, text: &str) {
        self.web_forms_data.add(format!("at{}", input_place), text.replace('\n', "$[ln];"));
    }

    pub fn add_attribute(&mut self, input_place: &str, attribute: &str, value: &str) {
        self.web_forms_data.add(format!("aa{}", input_place), format!("{}|{}", attribute, value));
    }

    pub fn add_tag(&mut self, input_place: &str, tag_name: &str, id: &str) {
        self.web_forms_data.add(format!("nt{}", input_place), format!("{}{}", tag_name, if !id.is_empty() { format!("|{}", id) } else { "".to_string() }));
    }

    // Set Methods
    pub fn set_id(&mut self, input_place: &str, id: &str) {
        self.web_forms_data.add(format!("si{}", input_place), id.to_string());
    }

    pub fn set_name(&mut self, input_place: &str, name: &str) {
        self.web_forms_data.add(format!("sn{}", input_place), name.to_string());
    }

    pub fn set_value(&mut self, input_place: &str, value: &str) {
        self.web_forms_data.add(format!("sv{}", input_place), value.to_string());
    }

    pub fn set_class(&mut self, input_place: &str, class: &str) {
        self.web_forms_data.add(format!("sc{}", input_place), class.to_string());
    }

    pub fn set_style(&mut self, input_place: &str, style: &str) {
        self.web_forms_data.add(format!("ss{}", input_place), style.to_string());
    }

    pub fn set_option_tag(&mut self, input_place: &str, text: &str, value: &str, selected: bool) {
        self.web_forms_data.add(format!("so{}", input_place), format!("{}|{}{}", value, text, if selected { "|1" } else { "" }));
    }

    pub fn set_checked(&mut self, input_place: &str, checked: bool) {
        self.web_forms_data.add(format!("sk{}", input_place), if checked { "1".to_string() } else { "0".to_string() });
    }

    pub fn set_checkbox_tag_to_list(&mut self, input_place: &str, text: &str, value: &str, checked: bool) {
        self.web_forms_data.add(format!("sk{}", input_place), format!("{}|{}{}", value, text, if checked { "|1" } else { "" }));
    }

    pub fn set_title(&mut self, input_place: &str, title: &str) {
        self.web_forms_data.add(format!("sl{}", input_place), title.to_string());
    }

    pub fn set_text(&mut self, input_place: &str, text: &str) {
        self.web_forms_data.add(format!("st{}", input_place), text.replace('\n', "$[ln];"));
    }

    pub fn set_attribute(&mut self, input_place: &str, attribute: &str, value: &str) {
        self.web_forms_data.add(format!("sa{}", input_place), format!("{}|{}", attribute, value));
    }

    pub fn set_width(&mut self, input_place: &str, width: &str) {
        self.web_forms_data.add(format!("sw{}", input_place), width.to_string());
    }

    pub fn set_height(&mut self, input_place: &str, height: &str) {
        self.web_forms_data.add(format!("sh{}", input_place), height.to_string());
    }

    pub fn insert_id(&mut self, input_place: &str, id: &str) {
        self.web_forms_data.add(format!("ii{}", input_place), id.to_string());
    }

    pub fn insert_name(&mut self, input_place: &str, name: &str) {
        self.web_forms_data.add(format!("in{}", input_place), name.to_string());
    }

    pub fn insert_value(&mut self, input_place: &str, value: &str) {
        self.web_forms_data.add(format!("iv{}", input_place), value.to_string());
    }

    pub fn insert_class(&mut self, input_place: &str, class: &str) {
        self.web_forms_data.add(format!("ic{}", input_place), class.to_string());
    }

    pub fn insert_style(&mut self, input_place: &str, style: &str) {
        self.web_forms_data.add(format!("is{}", input_place), style.to_string());
    }

    pub fn insert_option_tag(&mut self, input_place: &str, text: &str, value: &str, selected: bool) {
        self.web_forms_data.add(format!("io{}", input_place), format!("{}|{}{}", value, text, if selected { "|1" } else { "" }));
    }

    pub fn insert_checkbox_tag(&mut self, input_place: &str, text: &str, value: &str, checked: bool) {
        self.web_forms_data.add(format!("ik{}", input_place), format!("{}|{}{}", value, text, if checked { "|1" } else { "" }));
    }

    pub fn insert_title(&mut self, input_place: &str, title: &str) {
        self.web_forms_data.add(format!("il{}", input_place), title.to_string());
    }

    pub fn insert_text(&mut self, input_place: &str, text: &str) {
        self.web_forms_data.add(format!("it{}", input_place), text.replace('\n', "$[ln];"));
    }

    pub fn insert_attribute(&mut self, input_place: &str, attribute: &str, value: &str) {
        self.web_forms_data.add(format!("ia{}", input_place), format!("{}|{}", attribute, value));
    }

    pub fn delete_id(&mut self, input_place: &str) {
        self.web_forms_data.add(format!("di{}", input_place), "1".to_string());
    }

    pub fn delete_name(&mut self, input_place: &str) {
        self.web_forms_data.add(format!("dn{}", input_place), "1".to_string());
    }

    pub fn delete_value(&mut self, input_place: &str) {
        self.web_forms_data.add(format!("dv{}", input_place), "1".to_string());
    }

    pub fn delete_class(&mut self, input_place: &str, class_name: &str) {
        self.web_forms_data.add(format!("dc{}", input_place), class_name.to_string());
    }

    pub fn delete_style(&mut self, input_place: &str, style_name: &str) {
        self.web_forms_data.add(format!("ds{}", input_place), style_name.to_string());
    }

    pub fn delete_option_tag(&mut self, input_place: &str, value: &str) {
        self.web_forms_data.add(format!("do{}", input_place), value.to_string());
    }

    pub fn delete_checkbox_tag(&mut self, input_place: &str, value: &str) {
        self.web_forms_data.add(format!("dk{}", input_place), value.to_string());
    }

    pub fn delete_title(&mut self, input_place: &str) {
        self.web_forms_data.add(format!("dl{}", input_place), "1".to_string());
    }

    pub fn delete_text(&mut self, input_place: &str) {
        self.web_forms_data.add(format!("dt{}", input_place), "1".to_string());
    }

    pub fn delete_attribute(&mut self, input_place: &str, attribute: &str) {
        self.web_forms_data.add(format!("da{}", input_place), attribute.to_string());
    }

    pub fn delete(&mut self, input_place: &str) {
        self.web_forms_data.add(format!("de{}", input_place), "1".to_string());
    }

    // Other Methods
    pub fn set_background_color(&mut self, input_place: &str, color: &str) {
        self.web_forms_data.add(format!("bc{}", input_place), color.to_string());
    }

    pub fn set_text_color(&mut self, input_place: &str, color: &str) {
        self.web_forms_data.add(format!("tc{}", input_place), color.to_string());
    }

    pub fn set_font_name(&mut self, input_place: &str, name: &str) {
        self.web_forms_data.add(format!("fn{}", input_place), name.to_string());
    }

    pub fn set_font_size(&mut self, input_place: &str, size: &str) {
        self.web_forms_data.add(format!("fs{}", input_place), size.to_string());
    }

    pub fn set_font_bold(&mut self, input_place: &str, bold: bool) {
        self.web_forms_data.add(format!("fb{}", input_place), if bold { "1".to_string() } else { "0".to_string() });
    }

    pub fn set_visible(&mut self, input_place: &str, visible: bool) {
        self.web_forms_data.add(format!("vi{}", input_place), if visible { "1".to_string() } else { "0".to_string() });
    }

    pub fn set_text_align(&mut self, input_place: &str, align: &str) {
        self.web_forms_data.add(format!("ta{}", input_place), align.to_string());
    }

    pub fn set_read_only(&mut self, input_place: &str, read_only: bool) {
        self.web_forms_data.add(format!("sr{}", input_place), if read_only { "1".to_string() } else { "0".to_string() });
    }

    pub fn set_disabled(&mut self, input_place: &str, disabled: bool) {
        self.web_forms_data.add(format!("sd{}", input_place), if disabled { "1".to_string() } else { "0".to_string() });
    }

    pub fn set_min_length(&mut self, input_place: &str, length: i32) {
        self.web_forms_data.add(format!("mn{}", input_place), length.to_string());
    }

    pub fn set_max_length(&mut self, input_place: &str, length: i32) {
        self.web_forms_data.add(format!("mx{}", input_place), length.to_string());
    }

    pub fn set_selected_value(&mut self, input_place: &str, value: &str) {
        self.web_forms_data.add(format!("ts{}", input_place), value.to_string());
    }

    pub fn set_selected_index(&mut self, input_place: &str, index: i32) {
        self.web_forms_data.add(format!("ti{}", input_place), index.to_string());
    }

    pub fn set_checked_value(&mut self, input_place: &str, value: &str, selected: bool) {
        self.web_forms_data.add(format!("ks{}", input_place), format!("{}|{}", value, if selected { "1" } else { "0" }));
    }

    pub fn call_script(&mut self, script_text: &str) {
        self.web_forms_data.add("_".to_string(), script_text.replace('\n', "$[ln];"));
    }

    pub fn load_url(&mut self, input_place: &str, url: &str) {
        self.web_forms_data.add(format!("lu{}", input_place), url.to_string());
    }

    // Increase Methods
    pub fn increase_min_length(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("+n{}", input_place), value.to_string());
    }

    pub fn increase_max_length(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("+x{}", input_place), value.to_string());
    }

    pub fn increase_font_size(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("+f{}", input_place), value.to_string());
    }

    pub fn increase_width(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("+w{}", input_place), value.to_string());
    }

    pub fn increase_height(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("+h{}", input_place), value.to_string());
    }

    pub fn increase_value(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("+v{}", input_place), value.to_string());
    }

    // Decrease Methods
    pub fn decrease_min_length(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("-n{}", input_place), value.to_string());
    }

    pub fn decrease_max_length(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("-x{}", input_place), value.to_string());
    }

    pub fn decrease_font_size(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("-f{}", input_place), value.to_string());
    }

    pub fn decrease_width(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("-w{}", input_place), value.to_string());
    }

    pub fn decrease_height(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("-h{}", input_place), value.to_string());
    }

    pub fn decrease_value(&mut self, input_place: &str, value: i32) {
        self.web_forms_data.add(format!("-v{}", input_place), value.to_string());
    }

    // Get Methods
    pub fn get_forms_action_data(&self) -> String {
        let mut return_value = String::new();

        for (key, value) in self.web_forms_data.get_list() {
            return_value.push_str(&format!("\n{}={}", key, value));
        }

        return_value
    }

    pub fn response(&self) -> String {
        format!("[web-forms]{}", self.get_forms_action_data())
    }

    pub fn get_forms_action_data_line_break(&self) -> String {
        let web_forms_data_list = self.web_forms_data.get_list();
        let mut return_value = String::new();
        let mut i = web_forms_data_list.len();

        for (key, value) in self.web_forms_data.get_list() {
            return_value.push_str(&format!("{}={}", key, value.replace("\"", "$[dq];")));
            return_value.push_str(if i-- > 1 { "$[sln];" } else { "" });
        }

        return_value
    }

    // Export Methods
    pub fn export_to_web_forms_tag(&self, src: Option<&str>) -> String {
        let mut tag = format!("<web-forms ac=\"{}\"", self.get_forms_action_data_line_break());
        if let Some(s) = src {
            tag.push_str(&format!(" src=\"{}\"", s));
        }
        tag.push_str("></web-forms>");
        tag
    }

    // Overload Methods
    pub fn export_to_web_forms_tag_with_size(&self, width: &str, height: &str, src: Option<&str>) -> String {
        let mut tag = format!("<web-forms ac=\"{}\" width=\"{}\" height=\"{}\"", self.get_forms_action_data_line_break(), width, height);
        if let Some(s) = src {
            tag.push_str(&format!(" src=\"{}\"", s));
        }
        tag.push_str("></web-forms>");
        tag
    }

    pub fn export_to_web_forms_tag_with_int_size(&self, width: i32, height: i32, src: Option<&str>) -> String {
        self.export_to_web_forms_tag_with_size(&format!("{}px", width), &format!("{}px", height), src)
    }
}

pub struct InputPlace;

impl InputPlace {
    pub fn id(id: &str) -> String { id.to_string() }
    pub fn name(name: &str) -> String { format!("({})", name) }
    pub fn name_index(name: &str, index: usize) -> String { format!("({}){}", name, index) }
    pub fn tag(tag: &str) -> String { format!("<{}>", tag) }
    pub fn tag_index(tag: &str, index: usize) -> String { format!("<{}>{}", tag, index) }
    pub fn class(class: &str) -> String { format!("{{{}}}", class) }
    pub fn class_index(class: &str, index: usize) -> String { format!("{{{}}}{}", class, index) }
    pub fn query(query: &str) -> String { format!("*{}", query.replace("=", "$[eq];")) }
    pub fn query_all(query: &str) -> String { format!("[{}]", query.replace("=", "$[eq];")) }
}

pub trait ExtensionWebFormsMethods {
    fn append_place(&self, value: &str) -> String;
    fn export_to_web_forms_tag(&self) -> String;
    fn export_to_web_forms_tag_with_size(&self, width: i32, height: i32) -> String;
    fn export_action_controls_to_web_forms_tag(&self, action_controls: &str) -> String;
    fn remove_outer(&self, start_string: &str, end_string: &str) -> String;
}

impl ExtensionWebFormsMethods for String {
    fn append_place(&self, value: &str) -> String {
        let mut text = self.clone();
        if text.len() < 1 {
            return value.to_string();
        }

        if text.chars().next().unwrap() != '>' {
            text.insert(0, '>');
        }

        format!("{}|{}", text, value)
    }

    fn export_to_web_forms_tag(&self) -> String {
        format!("<web-forms src=\"{}\"></web-forms>", self)
    }

    fn export_to_web_forms_tag_with_size(&self, width: i32, height: i32) -> String {
        format!("<web-forms src=\"{}\" width=\"{}\" height=\"{}\"></web-forms>", self, width, height)
    }

    fn export_action_controls_to_web_forms_tag(&self, action_controls: &str) -> String {
        format!("<web-forms ac=\"{}\"></web-forms>", action_controls)
    }

    fn remove_outer(&self, start_string: &str, end_string: &str) -> String {
        let start = self.find(start_string);
        if start.is_none() { return self.clone(); }
        let end = self.find(end_string);
        if end.is_none() { return self.clone(); }

        let end_index = end.unwrap() + end_string.len();
        let length_to_remove = end_index - start.unwrap();

        let mut result = self.clone();
        result.drain(start.unwrap()..length_to_remove);
        result
    }
}