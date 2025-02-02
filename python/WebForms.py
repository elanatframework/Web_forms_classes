# Compatible with WebFormsJS version 1.6

class WebForms:
    def __init__(self):
        self.web_forms_data = NameValueCollection()

    # Add methods
    def add_id(self, input_place, id):
        self.web_forms_data.add(f"ai{input_place}", id)

    def add_name(self, input_place, name):
        self.web_forms_data.add(f"an{input_place}", name)

    def add_value(self, input_place, value):
        self.web_forms_data.add(f"av{input_place}", value)

    def add_class(self, input_place, class_name):
        self.web_forms_data.add(f"ac{input_place}", class_name)

    def add_style(self, input_place, style):
        self.web_forms_data.add(f"as{input_place}", style)

    def add_style_with_name_value(self, input_place, name, value):
        self.web_forms_data.add(f"as{input_place}", f"{name}:{value}")

    def add_option_tag(self, input_place, text, value, selected=False):
        self.web_forms_data.add(f"ao{input_place}", f"{value}|{text}{'|1' if selected else ''}")

    def add_check_box_tag(self, input_place, text, value, checked=False):
        self.web_forms_data.add(f"ak{input_place}", f"{value}|{text}{'|1' if checked else ''}")

    def add_title(self, input_place, title):
        self.web_forms_data.add(f"al{input_place}", title)

    def add_text(self, input_place, text):
        self.web_forms_data.add(f"at{input_place}", text.replace("\n", "$[ln];"))

    def add_text_to_up(self, input_place, text):
        self.web_forms_data.add(f"pt{input_place}", text.replace("\n", "$[ln];"))

    def add_attribute(self, input_place, attribute, value=""):
        self.web_forms_data.add(f"aa{input_place}", f"{attribute}|{value}")

    def add_tag(self, input_place, tag_name, id=""):
        self.web_forms_data.add(f"nt{input_place}", f"{tag_name}{f'|{id}' if id else ''}")

    def add_tag_to_up(self, input_place, tag_name, id=""):
        self.web_forms_data.add(f"ut{input_place}", f"{tag_name}{f'|{id}' if id else ''}")

    def add_tag_before(self, input_place, tag_name, id=""):
        self.web_forms_data.add(f"bt{input_place}", f"{tag_name}{f'|{id}' if id else ''}")

    def add_tag_after(self, input_place, tag_name, id=""):
        self.web_forms_data.add(f"ft{input_place}", f"{tag_name}{f'|{id}' if id else ''}")

    # Set methods
    def set_id(self, input_place, id):
        self.web_forms_data.add(f"si{input_place}", id)

    def set_name(self, input_place, name):
        self.web_forms_data.add(f"sn{input_place}", name)

    def set_value(self, input_place, value):
        self.web_forms_data.add(f"sv{input_place}", value)

    def set_class(self, input_place, class_name):
        self.web_forms_data.add(f"sc{input_place}", class_name)

    def set_style(self, input_place, style):
        self.web_forms_data.add(f"ss{input_place}", style)

    def set_style_with_name_value(self, input_place, name, value):
        self.web_forms_data.add(f"ss{input_place}", f"{name}:{value}")

    def set_option_tag(self, input_place, text, value, selected=False):
        self.web_forms_data.add(f"so{input_place}", f"{value}|{text}{'|1' if selected else ''}")

    def set_checked(self, input_place, checked=False):
        self.web_forms_data.add(f"sk{input_place}", "1" if checked else "0")

    def set_check_box_tag_to_list(self, input_place, text, value, checked=False):
        self.web_forms_data.add(f"sk{input_place}", f"{value}|{text}{'|1' if checked else ''}")

    def set_title(self, input_place, title):
        self.web_forms_data.add(f"sl{input_place}", title)

    def set_text(self, input_place, text):
        self.web_forms_data.add(f"st{input_place}", text.replace("\n", "$[ln];"))

    def set_attribute(self, input_place, attribute, value=""):
        self.web_forms_data.add(f"sa{input_place}", f"{attribute}{f'|{value}' if value else ''}")

    def set_width(self, input_place, width):
        self.web_forms_data.add(f"sw{input_place}", width)

    def set_height(self, input_place, height):
        self.web_forms_data.add(f"sh{input_place}", height)

    # Insert methods
    def insert_id(self, input_place, id):
        self.web_forms_data.add(f"ii{input_place}", id)

    def insert_name(self, input_place, name):
        self.web_forms_data.add(f"in{input_place}", name)

    def insert_value(self, input_place, value):
        self.web_forms_data.add(f"iv{input_place}", value)

    def insert_class(self, input_place, class_name):
        self.web_forms_data.add(f"ic{input_place}", class_name)

    def insert_style(self, input_place, style):
        self.web_forms_data.add(f"is{input_place}", style)

    def insert_style_with_name_value(self, input_place, name, value):
        self.web_forms_data.add(f"is{input_place}", f"{name}:{value}")

    def insert_option_tag(self, input_place, text, value, selected=False):
        self.web_forms_data.add(f"io{input_place}", f"{value}|{text}{'|1' if selected else ''}")

    def insert_check_box_tag(self, input_place, text, value, checked=False):
        self.web_forms_data.add(f"ik{input_place}", f"{value}|{text}{'|1' if checked else ''}")

    def insert_title(self, input_place, title):
        self.web_forms_data.add(f"il{input_place}", title)

    def insert_text(self, input_place, text):
        self.web_forms_data.add(f"it{input_place}", text.replace("\n", "$[ln];"))

    def insert_attribute(self, input_place, attribute, value=""):
        self.web_forms_data.add(f"ia{input_place}", f"{attribute}{f'|{value}' if value else ''}")

    # Delete methods
    def delete_id(self, input_place):
        self.web_forms_data.add(f"di{input_place}", "1")

    def delete_name(self, input_place):
        self.web_forms_data.add(f"dn{input_place}", "1")

    def delete_value(self, input_place):
        self.web_forms_data.add(f"dv{input_place}", "1")

    def delete_class(self, input_place, class_name):
        self.web_forms_data.add(f"dc{input_place}", class_name)

    def delete_style(self, input_place, style_name):
        self.web_forms_data.add(f"ds{input_place}", style_name)

    def delete_option_tag(self, input_place, value):
        self.web_forms_data.add(f"do{input_place}", value)

    def delete_all_option_tag(self, input_place):
        self.web_forms_data.add(f"do{input_place}", "*")

    def delete_check_box_tag(self, input_place, value):
        self.web_forms_data.add(f"dk{input_place}", value)

    def delete_all_check_box_tag(self, input_place):
        self.web_forms_data.add(f"dk{input_place}", "*")

    def delete_title(self, input_place):
        self.web_forms_data.add(f"dl{input_place}", "1")

    def delete_text(self, input_place):
        self.web_forms_data.add(f"dt{input_place}", "1")

    def delete_attribute(self, input_place, attribute):
        self.web_forms_data.add(f"da{input_place}", attribute)

    def delete(self, input_place):
        self.web_forms_data.add(f"de{input_place}", "1")

    def delete_parent(self, input_place):
        self.web_forms_data.add(f"dp{input_place}", "1")

    # Other methods
    def set_background_color(self, input_place, color):
        self.web_forms_data.add(f"bc{input_place}", color)

    def set_text_color(self, input_place, color):
        self.web_forms_data.add(f"tc{input_place}", color)

    def set_font_name(self, input_place, name):
        self.web_forms_data.add(f"fn{input_place}", name)

    def set_font_size(self, input_place, size):
        self.web_forms_data.add(f"fs{input_place}", size)

    def set_font_bold(self, input_place, bold):
        self.web_forms_data.add(f"fb{input_place}", "1" if bold else "0")

    def set_visible(self, input_place, visible):
        self.web_forms_data.add(f"vi{input_place}", "1" if visible else "0")

    def set_text_align(self, input_place, align):
        self.web_forms_data.add(f"ta{input_place}", align)

    def set_read_only(self, input_place, read_only):
        self.web_forms_data.add(f"sr{input_place}", "1" if read_only else "0")

    def set_disabled(self, input_place, disabled):
        self.web_forms_data.add(f"sd{input_place}", "1" if disabled else "0")

    def set_focus(self, input_place, focus):
        self.web_forms_data.add(f"sf{input_place}", "1" if focus else "0")

    def set_min_length(self, input_place, length):
        self.web_forms_data.add(f"mn{input_place}", str(length))

    def set_max_length(self, input_place, length):
        self.web_forms_data.add(f"mx{input_place}", str(length))

    def set_selected_value(self, input_place, value):
        self.web_forms_data.add(f"ts{input_place}", value)

    def set_selected_index(self, input_place, index):
        self.web_forms_data.add(f"ti{input_place}", str(index))

    def set_checked_value(self, input_place, value, selected):
        self.web_forms_data.add(f"ks{input_place}", f"{value}|{'1' if selected else '0'}")

    def set_checked_index(self, input_place, index, selected):
        self.web_forms_data.add(f"ki{input_place}", f"{index}|{'1' if selected else '0'}")

    def call_script(self, script_text):
        self.web_forms_data.add("_", script_text.replace("\n", "$[ln];"))

    def load_url(self, input_place, url):
        self.web_forms_data.add(f"lu{input_place}", url)

    def change_url(self, url):
        self.web_forms_data.add("cu", url)

    def remove_session_cache(self, cache_key):
        self.web_forms_data.add("rs", cache_key)

    def remove_all_session_cache(self):
        self.web_forms_data.add("rs", "*")

    def remove_cache(self, cache_key):
        self.web_forms_data.add("rd", cache_key)

    def remove_all_cache(self):
        self.web_forms_data.add("rd", "*")

    def set_session_cache(self):
        self.web_forms_data.add("cs", "1")

    def set_cache(self, second):
        self.web_forms_data.add("cd", str(second))

    def set_cache_all(self):
        self.web_forms_data.add("cd", "*")

    # Increase methods
    def increase_min_length(self, input_place, value):
        self.web_forms_data.add(f"+n{input_place}", str(value))

    def increase_max_length(self, input_place, value):
        self.web_forms_data.add(f"+x{input_place}", str(value))

    def increase_font_size(self, input_place, value):
        self.web_forms_data.add(f"+f{input_place}", str(value))

    def increase_width(self, input_place, value):
        self.web_forms_data.add(f"+w{input_place}", str(value))

    def increase_height(self, input_place, value):
        self.web_forms_data.add(f"+h{input_place}", str(value))

    def increase_value(self, input_place, value):
        self.web_forms_data.add(f"+v{input_place}", str(value))

    # Decrease methods
    def decrease_min_length(self, input_place, value):
        self.web_forms_data.add(f"-n{input_place}", str(value))

    def decrease_max_length(self, input_place, value):
        self.web_forms_data.add(f"-x{input_place}", str(value))

    def decrease_font_size(self, input_place, value):
        self.web_forms_data.add(f"-f{input_place}", str(value))

    def decrease_width(self, input_place, value):
        self.web_forms_data.add(f"-w{input_place}", str(value))

    def decrease_height(self, input_place, value):
        self.web_forms_data.add(f"-h{input_place}", str(value))

    def decrease_value(self, input_place, value):
        self.web_forms_data.add(f"-v{input_place}", str(value))

    # Event methods
    def set_post_event(self, input_place, html_event):
        self.web_forms_data.add(f"Ep{input_place}", html_event)

    def set_post_event_adding(self, input_place, html_event):
        self.web_forms_data.add(f"Ep{input_place}", f"{html_event}|+")

    def set_post_event_to(self, input_place, html_event, output_place):
        self.web_forms_data.add(f"Ep{input_place}", f"{html_event}|{output_place}")

    def set_post_event_listener(self, input_place, html_event_listener):
        self.web_forms_data.add(f"EP{input_place}", html_event_listener)

    def set_post_event_listener_adding(self, input_place, html_event_listener):
        self.web_forms_data.add(f"EP{input_place}", f"{html_event_listener}|+")

    def set_post_event_listener_to(self, input_place, html_event_listener, output_place):
        self.web_forms_data.add(f"EP{input_place}", f"{html_event_listener}|{output_place}")

    def set_get_event(self, input_place, html_event, path=None):
        self.web_forms_data.add(f"Eg{input_place}", f"{html_event}|{path if path else '#'}")

    def set_get_event_with_output_place(self, input_place, html_event, output_place, path=None):
        self.web_forms_data.add(f"Eg{input_place}", f"{html_event}|{path if path else '#'}|{output_place}")

    def set_get_event_in_form(self, input_place, html_event):
        self.web_forms_data.add(f"Eg{input_place}", html_event)

    def set_get_event_in_form_with_output_place(self, input_place, html_event, output_place):
        self.web_forms_data.add(f"Eg{input_place}", f"{html_event}|{output_place}")

    def set_get_event_listener(self, input_place, html_event_listener, path=None):
        self.web_forms_data.add(f"EG{input_place}", f"{html_event_listener}|{path if path else '#'}")

    def set_get_event_listener_with_output_place(self, input_place, html_event_listener, output_place, path=None):
        self.web_forms_data.add(f"EG{input_place}", f"{html_event_listener}|{path if path else '#'}|{output_place}")

    def set_get_event_in_form_listener(self, input_place, html_event_listener):
        self.web_forms_data.add(f"EG{input_place}", html_event_listener)

    def set_get_event_in_form_listener_with_output_place(self, input_place, html_event_listener, output_place):
        self.web_forms_data.add(f"EG{input_place}", f"{html_event_listener}|{output_place}")

    def set_tag_event(self, input_place, html_event, output_place):
        self.web_forms_data.add(f"Et{input_place}", f"{html_event}|{output_place}")

    def set_tag_event_listener(self, input_place, html_event, output_place):
        self.web_forms_data.add(f"ET{input_place}", f"{html_event}|{output_place}")

    def remove_post_event(self, input_place, html_event):
        self.web_forms_data.add(f"Rp{input_place}", html_event)

    def remove_get_event(self, input_place, html_event):
        self.web_forms_data.add(f"Rg{input_place}", html_event)

    def remove_tag_event(self, input_place, html_event):
        self.web_forms_data.add(f"Rt{input_place}", html_event)

    def remove_post_event_listener(self, input_place, html_event_listener):
        self.web_forms_data.add(f"RP{input_place}", html_event_listener)

    def remove_get_event_listener(self, input_place, html_event_listener):
        self.web_forms_data.add(f"RG{input_place}", html_event_listener)

    def remove_tag_event_listener(self, input_place, html_event_listener):
        self.web_forms_data.add(f"RT{input_place}", html_event_listener)

    # Save methods
    def save_id(self, input_place, key="."):
        self.web_forms_data.add(f"@gi{input_place}", key)

    def save_name(self, input_place, key="."):
        self.web_forms_data.add(f"@gn{input_place}", key)

    def save_value(self, input_place, key="."):
        self.web_forms_data.add(f"@gv{input_place}", key)

    def save_value_length(self, input_place, key="."):
        self.web_forms_data.add(f"@ge{input_place}", key)

    def save_class(self, input_place, key="."):
        self.web_forms_data.add(f"@gc{input_place}", key)

    def save_style(self, input_place, key="."):
        self.web_forms_data.add(f"@gs{input_place}", key)

    def save_title(self, input_place, key="."):
        self.web_forms_data.add(f"@gl{input_place}", key)

    def save_text(self, input_place, key="."):
        self.web_forms_data.add(f"@gt{input_place}", key)

    def save_text_length(self, input_place, key="."):
        self.web_forms_data.add(f"@gg{input_place}", key)

    def save_attribute(self, input_place, attribute, key="."):
        self.web_forms_data.add(f"@ga{input_place}", f"{key}|{attribute}")

    def save_width(self, input_place, key="."):
        self.web_forms_data.add(f"@gw{input_place}", key)

    def save_height(self, input_place, key="."):
        self.web_forms_data.add(f"@gh{input_place}", key)

    def save_read_only(self, input_place, key="."):
        self.web_forms_data.add(f"@gr{input_place}", key)

    def save_selected_index(self, input_place, key="."):
        self.web_forms_data.add(f"@gx{input_place}", key)

    def save_text_align(self, input_place, key="."):
        self.web_forms_data.add(f"@ta{input_place}", key)

    def save_node_length(self, input_place, key="."):
        self.web_forms_data.add(f"@nl{input_place}", key)

    def save_visible(self, input_place, key="."):
        self.web_forms_data.add(f"@vi{input_place}", key)

    # Pre Runner methods
    def assign_delay(self, second, index=-1):
        current_name = self.web_forms_data.get_name_by_index(index)
        if not current_name:
            return
        self.web_forms_data.change_name_by_index(index, f":{second}){current_name}")

    def assign_delay_change(self, second, index=-1):
        current_name = self.web_forms_data.get_name_by_index(index)
        if not current_name:
            return
        current_name = self.remove_outer(current_name, ":", ")")
        self.web_forms_data.change_name_by_index(index, f":{second}){current_name}")

    def assign_interval(self, second, index=-1):
        current_name = self.web_forms_data.get_name_by_index(index)
        if not current_name:
            return
        self.web_forms_data.change_name_by_index(index, f"({second}){current_name}")

    def assign_interval_change(self, second, index=-1):
        current_name = self.web_forms_data.get_name_by_index(index)
        if not current_name:
            return
        current_name = self.remove_outer(current_name, "(", ")")
        self.web_forms_data.change_name_by_index(index, f"({second}){current_name}")

    # Index methods
    def start_index(self, name=""):
        self.web_forms_data.add("#", name)

    # Get methods
    def get_forms_action_data(self):
        return_value = ""
        for nv in self.web_forms_data.get_list():
            return_value += f"\n{nv.name}"
            if nv.value:
                return_value += f"={nv.value}"
        return return_value

    def response(self):
        return f"[web-forms]{self.get_forms_action_data()}"

    def get_forms_action_data_line_break(self):
        return_value = ""
        web_forms_data_list = self.web_forms_data.get_list()
        i = len(web_forms_data_list)
        for nv in web_forms_data_list:
            return_value += nv.name
            if nv.value:
                return_value += f"={nv.value.replace('\"', '$[dq];')}"
            if i > 1:
                return_value += "$[sln];"
            i -= 1
        return return_value

    # Export methods
    def export_to_web_forms_tag(self, src=None):
        return f'<web-forms ac="{self.get_forms_action_data_line_break()}"{f" src=\"{src}\"" if src else ""}></web-forms>'

    def export_to_web_forms_tag_with_dimensions(self, width, height, src=None):
        return f'<web-forms ac="{self.get_forms_action_data_line_break()}" width="{width}" height="{height}"{f" src=\"{src}\"" if src else ""}></web-forms>'

    def export_to_web_forms_tag_with_dimensions_int(self, width, height, src=None):
        return self.export_to_web_forms_tag_with_dimensions(f"{width}px", f"{height}px", src)

    def done_to_web_forms_tag(self, id=None):
        return f'<web-forms ac="{self.get_forms_action_data_line_break()}"{f" id=\"{id}\" done=\"true\"" if id else ""}></web-forms>'

    def export_to_name_value(self):
        return self.web_forms_data

    def append_form(self, form):
        self.web_forms_data.add_list(form.export_to_name_value().get_list())

    def set_headers(self, context):
        context.response.headers["Content-Type"] = "text/plain"

    def clean(self):
        self.web_forms_data = NameValueCollection()

    @staticmethod
    def remove_outer(text, start_string, end_string):
        start = text.find(start_string)
        if start == -1:
            return text
        end = text.find(end_string, start)
        if end == -1:
            return text
        return text[:start] + text[end + len(end_string):]


class InputPlace:
    @staticmethod
    def id(id):
        return id

    @staticmethod
    def name(name):
        return f"({name})"

    @staticmethod
    def name_with_index(name, index):
        return f"({name}){index}"

    @staticmethod
    def tag(tag):
        return f"<{tag}>"

    @staticmethod
    def tag_with_index(tag, index):
        return f"<{tag}>{index}"

    @staticmethod
    def media_class(class_name):
        return f"{{{class_name}}}"

    @staticmethod
    def media_class_with_index(class_name, index):
        return f"{{{class_name}}}{index}"

    @staticmethod
    def query(query):
        return f"*{query.replace('=', '$[eq];')}"

    @staticmethod
    def query_all(query):
        return f"[{query.replace('=', '$[eq];')}"


class OutputPlace(InputPlace):
    pass


class Fetch:
    @staticmethod
    def random(max_value):
        return f"@mr{max_value}"

    @staticmethod
    def random_range(min_value, max_value):
        return f"@mr{max_value},{min_value}"

    date_year = "@dy"
    date_month = "@dm"
    date_day = "@dd"
    date_hours = "@dh"
    date_minutes = "@di"
    date_seconds = "@ds"
    date_milliseconds = "@dl"

    @staticmethod
    def cookie(key):
        return f"@co{key}"

    @staticmethod
    def session(key):
        return f"@cs{key}"

    @staticmethod
    def session_with_replace(key, replace_value):
        return f"@cs{key},{replace_value}"

    @staticmethod
    def session_and_remove(key):
        return f"@cl{key}"

    @staticmethod
    def session_and_remove_with_replace(key, replace_value):
        return f"@cl{key},{replace_value}"

    @staticmethod
    def saved(key="."):
        return f"@cl{key}"

    @staticmethod
    def cache(key):
        return f"@cd{key}"

    @staticmethod
    def cache_with_replace(key, replace_value):
        return f"@cd{key},{replace_value}"

    @staticmethod
    def cache_and_remove(key):
        return f"@ct{key}"

    @staticmethod
    def cache_and_remove_with_replace(key, replace_value):
        return f"@ct{key},{replace_value}"

    @staticmethod
    def script(script_text):
        return f"@_{script_text.replace('\n', '$[ln];')}"


class HtmlEvent:
    on_abort = "onabort"
    on_after_print = "onafterprint"
    on_before_print = "onbeforeprint"
    on_before_unload = "onbeforeunload"
    on_blur = "onblur"
    on_can_play = "oncanplay"
    on_can_play_through = "oncanplaythrough"
    on_change = "onchange"
    on_click = "onclick"
    on_copy = "oncopy"
    on_cut = "oncut"
    on_double_click = "ondblclick"
    on_drag = "ondrag"
    on_drag_end = "ondragend"
    on_drag_enter = "ondragenter"
    on_drag_leave = "ondragleave"
    on_drag_over = "ondragover"
    on_drag_start = "ondragstart"
    on_drop = "ondrop"
    on_duration_change = "ondurationchange"
    on_ended = "onended"
    on_error = "onerror"
    on_focus = "onfocus"
    on_focus_in = "onfocusin"
    on_focus_out = "onfocusout"
    on_hash_change = "onhashchange"
    on_input = "oninput"
    on_invalid = "oninvalid"
    on_key_down = "onkeydown"
    on_key_press = "onkeypress"
    on_key_up = "onkeyup"
    on_load = "onload"
    on_loaded_data = "onloadeddata"
    on_loaded_metadata = "onloadedmetadata"
    on_load_start = "onloadstart"
    on_mouse_down = "onmousedown"
    on_mouse_enter = "onmouseenter"
    on_mouse_leave = "onmouseleave"
    on_mouse_move = "onmousemove"
    on_mouse_over = "onmouseover"
    on_mouse_out = "onmouseout"
    on_mouse_up = "onmouseup"
    on_offline = "onoffline"
    on_online = "ononline"
    on_page_hide = "onpagehide"
    on_page_show = "onpageshow"
    on_paste = "onpaste"
    on_pause = "onpause"
    on_play = "onplay"
    on_playing = "onplaying"
    on_progress = "onprogress"
    on_rate_change = "onratechange"
    on_resize = "onresize"
    on_reset = "onreset"
    on_scroll = "onscroll"
    on_search = "onsearch"
    on_seeked = "onseeked"
    on_seeking = "onseeking"
    on_select = "onselect"
    on_stalled = "onstalled"
    on_submit = "onsubmit"
    on_suspend = "onsuspend"
    on_time_update = "ontimeupdate"
    on_toggle = "ontoggle"
    on_touch_cancel = "ontouchcancel"
    on_touch_end = "ontouchend"
    on_touch_move = "ontouchmove"
    on_touch_start = "ontouchstart"
    on_unload = "onunload"
    on_volume_change = "onvolumechange"
    on_waiting = "onwaiting"


class HtmlEventListener:
    abort = "abort"
    after_print = "afterprint"
    before_print = "beforeprint"
    before_unload = "beforeunload"
    blur = "blur"
    can_play = "canplay"
    can_play_through = "canplaythrough"
    change = "change"
    click = "click"
    copy = "copy"
    cut = "cut"
    double_click = "dblclick"
    drag = "drag"
    drag_end = "dragend"
    drag_enter = "dragenter"
    drag_leave = "dragleave"
    drag_over = "dragover"
    drag_start = "dragstart"
    drop = "drop"
    duration_change = "durationchange"
    ended = "ended"
    error = "error"
    focus = "focus"
    focus_in = "focusin"
    focus_out = "focusout"
    hash_change = "hashchange"
    input = "input"
    invalid = "invalid"
    key_down = "keydown"
    key_press = "keypress"
    key_up = "keyup"
    load = "load"
    loaded_data = "loadeddata"
    loaded_metadata = "loadedmetadata"
    load_start = "loadstart"
    mouse_down = "mousedown"
    mouse_enter = "mouseenter"
    mouse_leave = "mouseleave"
    mouse_move = "mousemove"
    mouse_over = "mouseover"
    mouse_out = "mouseout"
    mouse_up = "mouseup"
    offline = "offline"
    online = "online"
    page_hide = "pagehide"
    page_show = "pageshow"
    paste = "paste"
    pause = "pause"
    play = "play"
    playing = "playing"
    progress = "progress"
    rate_change = "ratechange"
    resize = "resize"
    reset = "reset"
    scroll = "scroll"
    search = "search"
    seeked = "seeked"
    seeking = "seeking"
    select = "select"
    stalled = "stalled"
    submit = "submit"
    suspend = "suspend"
    time_update = "timeupdate"
    toggle = "toggle"
    touch_cancel = "touchcancel"
    touch_end = "touchend"
    touch_move = "touchmove"
    touch_start = "touchstart"
    unload = "unload"
    volume_change = "volumechange"
    waiting = "waiting"
    animation_end = "animationend"
    animation_iteration = "animationiteration"
    animation_start = "animationstart"
    context_menu = "contextmenu"
    full_screen_change = "fullscreenchange"
    full_screen_error = "fullscreenerror"
    pop_state = "popstate"
    transition_end = "transitionend"
    storage = "storage"
    wheel = "wheel"
	
	
class ExtensionWebFormsMethods:
    """This Method Does Not Support QueryAll"""
    
    @staticmethod
    def append_place(text, value):
        if len(text) < 1:
            return value
        return text + "|" + value
    
    @staticmethod
    def append_parent(text):
        return "/" + text

    @staticmethod
    def export_to_web_forms_tag(src):
        return f'<web-forms src="{src}"></web-forms>'
    
    @staticmethod
    def export_to_web_forms_tag_with_size(src, width, height):
        return f'<web-forms src="{src}" width="{width}" height="{height}"></web-forms>'

    @staticmethod
    def export_action_controls_to_web_forms_tag(action_controls):
        return f'<web-forms ac="{action_controls}"></web-forms>'
    
    @staticmethod
    def remove_outer(text, start_string, end_string):
        start = text.find(start_string)
        if start == -1:
            return text

        end = text.find(end_string, start)
        if end == -1:
            return text

        length_to_remove = (end - start) + len(end_string)
        return text[:start] + text[end + len(end_string):]


class NameValue:
    def __init__(self, name="", value=""):
        self.name = name
        self.value = value


class NameValueCollection:
    def __init__(self):
        self.name_value_list = []

    def add(self, name, value):
        self.name_value_list.append(NameValue(name, value))

    def set(self, name, value):
        if not self.exist(name):
            self.add(name, value)
        else:
            self.change_value(name, value)

    def delete(self, name):
        self.name_value_list = [nv for nv in self.name_value_list if nv.name != name]

    def delete_by_index(self, index):
        if index < 0:
            index = len(self.name_value_list) + index
        if 0 <= index < len(self.name_value_list):
            self.name_value_list.pop(index)

    def empty(self):
        self.name_value_list = []

    def exist(self, name):
        return any(nv.name == name for nv in self.name_value_list)

    def change_value(self, name, value):
        for nv in self.name_value_list:
            if nv.name == name:
                nv.value = value
                break

    def change_name(self, name, new_name):
        for nv in self.name_value_list:
            if nv.name == name:
                nv.name = new_name
                break

    def change_value_by_index(self, index, value):
        if index < 0:
            index = len(self.name_value_list) + index
        if 0 <= index < len(self.name_value_list):
            self.name_value_list[index].value = value

    def change_name_by_index(self, index, name):
        if index < 0:
            index = len(self.name_value_list) + index
        if 0 <= index < len(self.name_value_list):
            self.name_value_list[index].name = name

    def change_name_value_by_index(self, index, name, value):
        if index < 0:
            index = len(self.name_value_list) + index
        if 0 <= index < len(self.name_value_list):
            self.name_value_list[index].name = name
            self.name_value_list[index].value = value

    def add_list(self, name_value_list):
        self.name_value_list.extend(name_value_list)

    def get_value(self, name):
        for nv in self.name_value_list:
            if nv.name == name:
                return nv.value
        return ""

    def get_name_by_index(self, index):
        if index < 0:
            index = len(self.name_value_list) + index
        if 0 <= index < len(self.name_value_list):
            return self.name_value_list[index].name
        return ""

    def get_value_by_index(self, index):
        if index < 0:
            index = len(self.name_value_list) + index
        if 0 <= index < len(self.name_value_list):
            return self.name_value_list[index].value
        return ""

    def get_list(self):
        return self.name_value_list		
