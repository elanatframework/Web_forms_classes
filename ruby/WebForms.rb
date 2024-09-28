class WebForms
  def initialize
    @web_forms_data = {}
  end

  # Add methods
  def add_id(input_place, id)
    @web_forms_data["ai#{input_place}"] = id
  end

  def add_name(input_place, name)
    @web_forms_data["an#{input_place}"] = name
  end

  def add_value(input_place, value)
    @web_forms_data["av#{input_place}"] = value
  end

  def add_class(input_place, klass)
    @web_forms_data["ac#{input_place}"] = klass
  end

  def add_style(input_place, style)
    @web_forms_data["as#{input_place}"] = style
  end

  def add_option_tag(input_place, text, value, selected = false)
    @web_forms_data["ao#{input_place}"] = "#{value}|#{text}#{selected ? '|1' : ''}"
  end

  def add_checkbox_tag(input_place, text, value, checked = false)
    @web_forms_data["ak#{input_place}"] = "#{value}|#{text}#{checked ? '|1' : ''}"
  end

  def add_title(input_place, title)
    @web_forms_data["al#{input_place}"] = title
  end

  def add_text(input_place, text)
    @web_forms_data["at#{input_place}"] = text.gsub("\n", "$[ln];")
  end

  def add_attribute(input_place, attribute, value = "")
    @web_forms_data["aa#{input_place}"] = "#{attribute}|#{value}"
  end

  def add_tag(input_place, tag_name, id = "")
    @web_forms_data["nt#{input_place}"] = "#{tag_name}#{!id.empty? ? '|'+id : ''}"
  end

  # Set methods
  def set_id(input_place, id)
    @web_forms_data["si#{input_place}"] = id
  end

  def set_name(input_place, name)
    @web_forms_data["sn#{input_place}"] = name
  end

  def set_value(input_place, value)
    @web_forms_data["sv#{input_place}"] = value
  end

  def set_class(input_place, klass)
    @web_forms_data["sc#{input_place}"] = klass
  end

  def set_style(input_place, style)
    @web_forms_data["ss#{input_place}"] = style
  end

  def set_option_tag(input_place, text, value, selected = false)
    @web_forms_data["so#{input_place}"] = "#{value}|#{text}#{selected ? '|1' : ''}"
  end

  def set_checked(input_place, checked = false)
    @web_forms_data["sk#{input_place}"] = checked ? "1" : "0"
  end

  def set_checkbox_tag_to_list(input_place, text, value, checked = false)
    @web_forms_data["sk#{input_place}"] = "#{value}|#{text}#{checked ? '|1' : ''}"
  end

  def set_title(input_place, title)
    @web_forms_data["sl#{input_place}"] = title
  end

  def set_text(input_place, text)
    @web_forms_data["st#{input_place}"] = text.gsub("\n", "$[ln];")
  end

  def set_attribute(input_place, attribute, value = "")
    @web_forms_data["sa#{input_place}"] = "#{attribute}#{!value.empty? ? '|'+value : ''}"
  end

  def set_width(input_place, width)
    @web_forms_data["sw#{input_place}"] = width.to_s + "px"
  end

  def set_height(input_place, height)
    @web_forms_data["sh#{input_place}"] = height.to_s + "px"
  end

  # Insert methods
  def insert_id(input_place, id)
    @web_forms_data["ii#{input_place}"] = id
  end

  def insert_name(input_place, name)
    @web_forms_data["in#{input_place}"] = name
  end

  def insert_value(input_place, value)
    @web_forms_data["iv#{input_place}"] = value
  end

  def insert_class(input_place, klass)
    @web_forms_data["ic#{input_place}"] = klass
  end

  def insert_style(input_place, style)
    @web_forms_data["is#{input_place}"] = style
  end

  def insert_option_tag(input_place, text, value, selected = false)
    @web_forms_data["io#{input_place}"] = "#{value}|#{text}#{selected ? '|1' : ''}"
  end

  def insert_checkbox_tag(input_place, text, value, checked = false)
    @web_forms_data["ik#{input_place}"] = "#{value}|#{text}#{checked ? '|1' : ''}"
  end

  def insert_title(input_place, title)
    @web_forms_data["il#{input_place}"] = title
  end

  def insert_text(input_place, text)
    @web_forms_data["it#{input_place}"] = text.gsub("\n", "$[ln];")
  end

  def insert_attribute(input_place, attribute, value = "")
    @web_forms_data["ia#{input_place}"] = "#{attribute}#{!value.empty? ? '|'+value : ''}"
  end

  # Delete methods
  def delete_id(input_place)
    @web_forms_data["di#{input_place}"] = "1"
  end

  def delete_name(input_place)
    @web_forms_data["dn#{input_place}"] = "1"
  end

  def delete_value(input_place)
    @web_forms_data["dv#{input_place}"] = "1"
  end

  def delete_class(input_place, class_name)
    @web_forms_data["dc#{input_place}"] = class_name
  end

  def delete_style(input_place, style_name)
    @web_forms_data["ds#{input_place}"] = style_name
  end

  def delete_option_tag(input_place, value)
    @web_forms_data["do#{input_place}"] = value
  end

  def delete_checkbox_tag(input_place, value)
    @web_forms_data["dk#{input_place}"] = value
  end

  def delete_title(input_place)
    @web_forms_data["dl#{input_place}"] = "1"
  end

  def delete_text(input_place)
    @web_forms_data["dt#{input_place}"] = "1"
  end

  def delete_attribute(input_place, attribute)
    @web_forms_data["da#{input_place}"] = attribute
  end

  def delete(input_place)
    @web_forms_data["de#{input_place}"] = "1"
  end

  # Other methods
  def set_background_color(input_place, color)
    @web_forms_data["bc#{input_place}"] = color
  end

  def set_text_color(input_place, color)
    @web_forms_data["tc#{input_place}"] = color
  end

  def set_font_name(input_place, name)
    @web_forms_data["fn#{input_place}"] = name
  end

  def set_font_size(input_place, size)
    @web_forms_data["fs#{input_place}"] = size.to_s + "px"
  end

  def set_font_bold(input_place, bold)
    @web_forms_data["fb#{input_place}"] = bold ? "1" : "0"
  end

  def set_visible(input_place, visible)
    @web_forms_data["vi#{input_place}"] = visible ? "1" : "0"
  end

  def set_text_align(input_place, align)
    @web_forms_data["ta#{input_place}"] = align
  end

  def set_read_only(input_place, read_only)
    @web_forms_data["sr#{input_place}"] = read_only ? "1" : "0"
  end

  def set_disabled(input_place, disabled)
    @web_forms_data["sd#{input_place}"] = disabled ? "1" : "0"
  end

  def set_min_length(input_place, length)
    @web_forms_data["mn#{input_place}"] = length.to_s
  end

  def set_max_length(input_place, length)
    @web_forms_data["mx#{input_place}"] = length.to_s
  end

  def set_selected_value(input_place, value)
    @web_forms_data["ts#{input_place}"] = value
  end

  def set_selected_index(input_place, index)
    @web_forms_data["ti#{input_place}"] = index.to_s
  end

  def call_script(script_text)
    @web_forms_data["_"] = script_text.gsub("\n", "$[ln];")
  end

  def load_url(input_place, url)
    @web_forms_data["lu#{input_place}"] = url
  end

  # Increase methods
  def increase_min_length(input_place, value)
    @web_forms_data["+n#{input_place}"] = value.to_s
  end

  def increase_max_length(input_place, value)
    @web_forms_data["+x#{input_place}"] = value.to_s
  end

  def increase_font_size(input_place, value)
    @web_forms_data["+f#{input_place}"] = value.to_s
  end

  def increase_width(input_place, value)
    @web_forms_data["+w#{input_place}"] = value.to_s
  end

  def increase_height(input_place, value)
    @web_forms_data["+h#{input_place}"] = value.to_s
  end

  def increase_value(input_place, value)
    @web_forms_data["+v#{input_place}"] = value.to_s
  end

  # Decrease methods
  def decrease_min_length(input_place, value)
    @web_forms_data["-n#{input_place}"] = value.to_s
  end

  def decrease_max_length(input_place, value)
    @web_forms_data["-x#{input_place}"] = value.to_s
  end

  def decrease_font_size(input_place, value)
    @web_forms_data["-f#{input_place}"] = value.to_s
  end

  def decrease_width(input_place, value)
    @web_forms_data["-w#{input_place}"] = value.to_s
  end

  def decrease_height(input_place, value)
    @web_forms_data["-h#{input_place}"] = value.to_s
  end

  def decrease_value(input_place, value)
    @web_forms_data["-v#{input_place}"] = value.to_s
  end

  # Pre Runner methods
  def assign_delay(second, index = -1)
    current_name = get_name_by_index(index)

    return if current_name.nil? || current_name.empty?

    change_name_by_index(index, ":#{second})#{current_name}")
  end

  def assign_delay_change(second, index = -1)
    current_name = get_name_by_index(index)

    return if current_name.nil? || current_name.empty?

    current_name = remove_outer(current_name, ":", ")")
    change_name_by_index(index, ":#{second})#{current_name}")
  end

  def assign_interval(second, index = -1)
    current_name = get_name_by_index(index)

    return if current_name.nil? || current_name.empty?

    change_name_by_index(index, "(#{second})#{current_name}")
  end

  def assign_interval_change(second, index = -1)
    current_name = get_name_by_index(index)

    return if current_name.nil? || current_name.empty?

    current_name = remove_outer(current_name, "(", ")")
    change_name_by_index(index, "(#{second})#{current_name}")
  end

  # Get methods
  def get_forms_action_data
    return_value = ""

    @web_forms_data.each do |name, value|
      return_value += "\n#{name}=#{value}"
    end

    return_value
  end

  def response
    "[web-forms]#{get_forms_action_data}"
  end

  def get_forms_action_data_line_break
    return_value = ""

    web_forms_data_list = @web_forms_data.to_a

    i = web_forms_data_list.length
    web_forms_data_list.each do |nv|
      return_value += "#{nv[0]}=#{nv[1].gsub('"', "$[dq];")}#{(i -= 1) > 1 ? '$[sln];' : ''}"
    end

    return_value
  end

  # Export methods
  def export_to_web_forms_tag(src = nil)
    "<web-forms ac=\"#{get_forms_action_data_line_break}\"#{!src.nil? && !src.empty? ? " src=\"#{src}\"" : ''}></web-forms>"
  end

  # Overloaded methods
  def export_to_web_forms_tag_with_size(width, height, src = nil)
    "<web-forms ac=\"#{get_forms_action_data_line_break}\" width=\"#{width}\" height=\"#{height}\"#{!src.nil? && !src.empty? ? " src=\"#{src}\"" : ''}></web-forms>"
  end

  def export_to_web_forms_tag_with_size_int(width, height, src = nil)
    export_to_web_forms_tag_with_size("#{width}px", "#{height}px", src)
  end

  private

  def get_name_by_index(index)
    return nil if index < 0 || index >= @web_forms_data.size
    @web_forms_data.keys[index]
  end

  def change_name_by_index(index, new_name)
    return if index < 0 || index >= @web_forms_data.size
    key = @web_forms_data.keys[index]
    @web_forms_data[new_name] = @web_forms_data.delete(key)
  end

  def remove_outer(text, start_string, end_string)
    start = text.index(start_string)
    return text if start.nil?

    finish = text.index(end_string, start)
    return text if finish.nil?

    length_to_remove = (finish - start) + end_string.length
    text[0...start] + text[(finish + 1)..-1]
  end

end

class InputPlace
  def self.id(id)
    id
  end

  def self.name(name)
    "(#{name})"
  end

  def self.name_with_index(name, index)
    "(#{name})#{index}"
  end

  def self.tag(tag)
    "<#{tag}>"
  end

  def self.tag_with_index(tag, index)
    "<#{tag}>#{index}"
  end

  def self.class_name(klass)
    "{#{klass}}"
  end

  def self.class_with_index(klass, index)
    "{#{klass}}#{index}"
  end

  def self.query(query)
    "*#{query.gsub('=', '$[eq];')}"
  end

  def self.query_all(query)
    "[#{query.gsub('=', '$[eq];')}"
  end
end

class String
  def append_place(value)
    return value if self.length < 1

    return '>' + self if self[0] != '>'

    self + "|" + value
  end

  def export_to_web_forms_tag
    "<web-forms src=\"#{self}\"></web-forms>"
  end

  def export_to_web_forms_tag_with_size(width, height)
    "<web-forms src=\"#{self}\" width=\"#{width}\" height=\"#{height}\"></web-forms>"
  end

  def export_action_controls_to_web_forms_tag(action_controls)
    "<web-forms ac=\"#{action_controls}\"></web-forms>"
  end

  def remove_outer(start_string, end_string)
    start = self.index(start_string)
    return self if start.nil?

    finish = self.index(end_string, start)
    return self if finish.nil?

    length_to_remove = (finish - start) + end_string.length
    self[0...start] + self[(finish + 1)..-1]
  end
end