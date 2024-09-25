class WebForms:
    def __init__(self):
        self.web_forms_data = {}

    # Add methods
    def add_id(self, input_place, id_):
        self.web_forms_data[f"ai{input_place}"] = id_

    def add_name(self, input_place, name):
        self.web_forms_data[f"an{input_place}"] = name

    def add_value(self, input_place, value):
        self.web_forms_data[f"av{input_place}"] = value

    def add_class(self, input_place, class_name):
        self.web_forms_data[f"ac{input_place}"] = class_name

    def add_style(self, input_place, style):
        self.web_forms_data[f"as{input_place}"] = style

    def add_option_tag(self, input_place, text, value, selected=False):
        self.web_forms_data[f"ao{input_place}"] = f"{value}|{text}{'|1' if selected else ''}"

    def add_check_box_tag(self, input_place, text, value, checked=False):
        self.web_forms_data[f"ak{input_place}"] = f"{value}|{text}{'|1' if checked else ''}"

    def add_title(self, input_place, title):
        self.web_forms_data[f"al{input_place}"] = title

    def add_text(self, input_place, text):
        self.web_forms_data[f"at{input_place}"] = text.replace("\n", "$[ln];")

    def add_attribute(self, input_place, attribute, value=""):
        self.web_forms_data[f"aa{input_place}"] = f"{attribute}|{value}"

    def add_tag(self, input_place, tag_name, id_=""):
        self.web_forms_data[f"nt{input_place}"] = f"{tag_name}{'|' + id_ if id_ else ''}"

    # Set methods
    def set_id(self, input_place, id_):
        self.web_forms_data[f"si{input_place}"] = id_

    def set_name(self, input_place, name):
        self.web_forms_data[f"sn{input_place}"] = name

    def set_value(self, input_place, value):
        self.web_forms_data[f"sv{input_place}"] = value

    def set_class(self, input_place, class_name):
        self.web_forms_data[f"sc{input_place}"] = class_name

    def set_style(self, input_place, style):
        self.web_forms_data[f"ss{input_place}"] = style

    def set_option_tag(self, input_place, text, value, selected=False):
        self.web_forms_data[f"so{input_place}"] = f"{value}|{text}{'|1' if selected else ''}"

    def set_checked(self, input_place, checked=False):
        self.web_forms_data[f"sk{input_place}"] = "1" if checked else "0"

    def set_check_box_tag_to_list(self, input_place, text, value, checked=False):
        self.web_forms_data[f"sk{input_place}"] = f"{value}|{text}{'|1' if checked else ''}"

    def set_title(self, input_place, title):
        self.web_forms_data[f"sl{input_place}"] = title

    def set_text(self, input_place, text):
        self.web_forms_data[f"st{input_place}"] = text.replace("\n", "$[ln];")

    def set_attribute(self, input_place, attribute, value=""):
        self.web_forms_data[f"sa{input_place}"] = f"{attribute}{'|' + value if value else ''}"

    def set_width(self, input_place, width):
        self.web_forms_data[f"sw{input_place}"] = str(width)

    def set_height(self, input_place, height):
        self.web_forms_data[f"sh{input_place}"] = str(height)

    def insert_id(self, input_place, id_):
        self.web_forms_data[f"ii{input_place}"] = id_

    def insert_name(self, input_place, name):
        self.web_forms_data[f"in{input_place}"] = name

    def insert_value(self, input_place, value):
        self.web_forms_data[f"iv{input_place}"] = value

    def insert_class(self, input_place, class_name):
        self.web_forms_data[f"ic{input_place}"] = class_name

    def insert_style(self, input_place, style):
        self.web_forms_data[f"is{input_place}"] = style

    def insert_option_tag(self, input_place, text, value, selected=False):
        self.web_forms_data[f"io{input_place}"] = f"{value}|{text}{'|1' if selected else ''}"

    def insert_check_box_tag(self, input_place, text, value, checked=False):
        self.web_forms_data[f"ik{input_place}"] = f"{value}|{text}{'|1' if checked else ''}"

    def insert_title(self, input_place, title):
        self.web_forms_data[f"il{input_place}"] = title

    def insert_text(self, input_place, text):
        self.web_forms_data[f"it{input_place}"] = text.replace("\n", "$[ln];")

    def insert_attribute(self, input_place, attribute, value=""):
        self.web_forms_data[f"ia{input_place}"] = f"{attribute}{'|' + value if value else ''}"

    # Delete methods
    def delete_id(self, input_place):
        self.web_forms_data[f"di{input_place}"] = "1"

    def delete_name(self, input_place):
        self.web_forms_data[f"dn{input_place}"] = "1"

    def delete_value(self, input_place):
        self.web_forms_data[f"dv{input_place}"] = "1"

    def delete_class(self, input_place, class_name):
        self.web_forms_data[f"dc{input_place}"] = class_name

    def delete_style(self, input_place, style_name):
        self.web_forms_data[f"ds{input_place}"] = style_name

    def delete_option_tag(self, input_place, value):
        self.web_forms_data[f"do{input_place}"] = value

    def delete_check_box_tag(self, input_place, value):
        self.web_forms_data[f"dk{input_place}"] = value

    def delete_title(self, input_place):
        self.web_forms_data[f"dl{input_place}"] = "1"

    def delete_text(self, input_place):
        self.web_forms_data[f"dt{input_place}"] = "1"

    def delete_attribute(self, input_place, attribute):
        self.web_forms_data[f"da{input_place}"] = attribute

    def delete(self, input_place):
        self.web_forms_data[f"de{input_place}"] = "1"

    # Other methods
    def set_background_color(self, input_place, color):
        self.web_forms_data[f"bc{input_place}"] = color

    def set_text_color(self, input_place, color):
        self.web_forms_data[f"tc{input_place}"] = color

    def set_font_name(self, input_place, name):
        self.web_forms_data[f"fn{input_place}"] = name

    def set_font_size(self, input_place, size):
        self.web_forms_data[f"fs{input_place}"] = size

    def set_font_bold(self, input_place, bold):
        self.web_forms_data[f"fb{input_place}"] = "1" if bold else "0"

    def set_visible(self, input_place, visible):
        self.web_forms_data[f"vi{input_place}"] = "1" if visible else "0"

    def set_text_align(self, input_place, align):
        self.web_forms_data[f"ta{input_place}"] = align

    def set_read_only(self, input_place, read_only):
        self.web_forms_data[f"sr{input_place}"] = "1" if read_only else "0"

    def set_disabled(self, input_place, disabled):
        self.web_forms_data[f"sd{input_place}"] = "1" if disabled else "0"

    def set_min_length(self, input_place, length):
        self.web_forms_data[f"mn{input_place}"] = str(length)

    def set_max_length(self, input_place, length):
        self.web_forms_data[f"mx{input_place}"] = str(length)

    def set_selected_value(self, input_place, value):
        self.web_forms_data[f"ts{input_place}"] = value

    def set_selected_index(self, input_place, index):
        self.web_forms_data[f"ti{input_place}"] = str(index)

    def call_script(self, script_text):
        self.web_forms_data["_"] = script_text.replace("\n", "$[ln];")

    def load_url(self, input_place, url):
        self.web_forms_data[f"lu{input_place}"] = url

    # Increase and Decrease methods
    def increase_min_length(self, input_place, value):
        self.web_forms_data[f"+n{input_place}"] = str(value)

    def increase_max_length(self, input_place, value):
        self.web_forms_data[f"+x{input_place}"] = str(value)

    def increase_font_size(self, input_place, value):
        self.web_forms_data[f"+f{input_place}"] = str(value)

    def increase_width(self, input_place, value):
        self.web_forms_data[f"+w{input_place}"] = str(value)

    def increase_height(self, input_place, value):
        self.web_forms_data[f"+h{input_place}"] = str(value)

    def increase_value(self, input_place, value):
        self.web_forms_data[f"+v{input_place}"] = str(value)

    def decrease_min_length(self, input_place, value):
        self.web_forms_data[f"-n{input_place}"] = str(value)

    def decrease_max_length(self, input_place, value):
        self.web_forms_data[f"-x{input_place}"] = str(value)

    def decrease_font_size(self, input_place, value):
        self.web_forms_data[f"-f{input_place}"] = str(value)

    def decrease_width(self, input_place, value):
        self.web_forms_data[f"-w{input_place}"] = str(value)

    def decrease_height(self, input_place, value):
        self.web_forms_data[f"-h{input_place}"] = str(value)

    def decrease_value(self, input_place, value):
        self.web_forms_data[f"-v{input_place}"] = str(value)

    # Get methods
    def get_forms_action_data(self):
        return "\n".join(f"{name}={value}" for name, value in self.web_forms_data.items())

    def response(self):
        return "[web-forms]" + self.get_forms_action_data()

    def get_forms_action_data_line_break(self):
        return "$[sln];".join(f"{name}={value.replace('\"', '$[dq];')}" for name, value in self.web_forms_data.items())

    # Export methods
    def export_to_web_forms_tag(self, src=None):
        tag_content = f"<web-forms ac=\"{self.get_forms_action_data_line_break()}\""
        if src:
            tag_content += f" src=\"{src}\""
        tag_content += "></web-forms>"
        return tag_content

    def export_to_web_forms_tag_with_dimensions(self, width, height, src=None):
        tag_content = f"<web-forms ac=\"{self.get_forms_action_data_line_break()}\" width=\"{width}\" height=\"{height}\""
        if src:
            tag_content += f" src=\"{src}\""
        tag_content += "></web-forms>"
        return tag_content

    def export_to_web_forms_tag_with_dimensions_int(self, width, height, src=None):
        return self.export_to_web_forms_tag_with_dimensions(f"{width}px", f"{height}px", src)


class InputPlace:
    @staticmethod
    def id(id_):
        return id_

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
        return "*" + query.replace("=", "$[eq];")

    @staticmethod
    def query_all(query):
        return "[" + query.replace("=", "$[eq];")


# Extension methods class
class ExtensionWebFormsMethods:
    @staticmethod
    def append_place(text, value):
        if len(text) < 1:
            return value

        if text[0] != '>':
            text = '>' + text

        return text + "|" + value

    @staticmethod
    def export_to_web_forms_tag(src):
        return f"<web-forms src=\"{src}\"></web-forms>"

    @staticmethod
    def export_to_web_forms_tag_with_dimensions(src, width, height):
        return f"<web-forms src=\"{src}\" width=\"{width}\" height=\"{height}\"></web-forms>"

    @staticmethod
    def export_action_controls_to_web_forms_tag(action_controls):
        return f"<web-forms ac=\"{action_controls}\"></web-forms>"

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