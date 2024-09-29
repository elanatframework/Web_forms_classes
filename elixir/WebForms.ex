defmodule WebForms do
  defstruct web_forms_data: %{}

  def new() do
    %WebForms{}
  end

  # Add methods
  def add_id(%WebForms{web_forms_data: data} = forms, input_place, id) do
    updated_data = Map.put(data, "ai#{input_place}", id)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_name(%WebForms{web_forms_data: data} = forms, input_place, name) do
    updated_data = Map.put(data, "an#{input_place}", name)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_value(%WebForms{web_forms_data: data} = forms, input_place, value) do
    updated_data = Map.put(data, "av#{input_place}", value)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_class(%WebForms{web_forms_data: data} = forms, input_place, klass) do
    updated_data = Map.put(data, "ac#{input_place}", klass)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_style(%WebForms{web_forms_data: data} = forms, input_place, style) do
    updated_data = Map.put(data, "as#{input_place}", style)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_option_tag(forms, input_place, text, value, selected \\ false) do
    selected_flag = if selected, do: "|1", else: ""
    updated_data = Map.put(forms.web_forms_data, "ao#{input_place}", "#{value}|#{text}#{selected_flag}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_checkbox_tag(forms, input_place, text, value, checked \\ false) do
    checked_flag = if checked, do: "|1", else: ""
    updated_data = Map.put(forms.web_forms_data, "ak#{input_place}", "#{value}|#{text}#{checked_flag}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_title(%WebForms{web_forms_data: data} = forms, input_place, title) do
    updated_data = Map.put(data, "al#{input_place}", title)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_text(%WebForms{web_forms_data: data} = forms, input_place, text) do
    formatted_text = String.replace(text, "\n", "$[ln];")
    updated_data = Map.put(data, "at#{input_place}", formatted_text)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_attribute(%WebForms{web_forms_data: data} = forms, input_place, attribute, value \\ "") do
    updated_data = Map.put(data, "aa#{input_place}", "#{attribute}|#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def add_tag(%WebForms{web_forms_data: data} = forms, input_place, tag_name, id \\ "") do
    updated_data = Map.put(data, "nt#{input_place}", "#{tag_name}#{if id != "", do: "|#{id}", else: ""}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  # Set methods
  def set_id(forms, input_place, id) do
    updated_data = Map.put(forms.web_forms_data, "si#{input_place}", id)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_name(forms, input_place, name) do
    updated_data = Map.put(forms.web_forms_data, "sn#{input_place}", name)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_value(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "sv#{input_place}", value)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_class(forms, input_place, klass) do
    updated_data = Map.put(forms.web_forms_data, "sc#{input_place}", klass)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_style(forms, input_place, style) do
    updated_data = Map.put(forms.web_forms_data, "ss#{input_place}", style)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_option_tag(forms, input_place, text, value, selected \\ false) do
    selected_flag = if selected, do: "|1", else: ""
    updated_data = Map.put(forms.web_forms_data, "so#{input_place}", "#{value}|#{text}#{selected_flag}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_checked(forms, input_place, checked \\ false) do
    updated_data = Map.put(forms.web_forms_data, "sk#{input_place}", if checked, do: "1", else: "0")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_checkbox_tag_to_list(forms, input_place, text, value, checked \\ false) do
    checked_flag = if checked, do: "|1", else: ""
    updated_data = Map.put(forms.web_forms_data, "sk#{input_place}", "#{value}|#{text}#{checked_flag}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_title(forms, input_place, title) do
    updated_data = Map.put(forms.web_forms_data, "sl#{input_place}", title)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_text(forms, input_place, text) do
    formatted_text = String.replace(text, "\n", "$[ln];")
    updated_data = Map.put(forms.web_forms_data, "st#{input_place}", formatted_text)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_attribute(forms, input_place, attribute, value \\ "") do
    updated_data = Map.put(forms.web_forms_data, "sa#{input_place}", "#{attribute}#{if value != "", do: "|#{value}", else: ""}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_width(forms, input_place, width) do
    updated_data = Map.put(forms.web_forms_data, "sw#{input_place}", "#{width}px")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_height(forms, input_place, height) do
    updated_data = Map.put(forms.web_forms_data, "sh#{input_place}", "#{height}px")
    %WebForms{forms | web_forms_data: updated_data}
  end

  # Insert methods
  def insert_id(forms, input_place, id) do
    updated_data = Map.put(forms.web_forms_data, "ii#{input_place}", id)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_name(forms, input_place, name) do
    updated_data = Map.put(forms.web_forms_data, "in#{input_place}", name)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_value(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "iv#{input_place}", value)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_class(forms, input_place, klass) do
    updated_data = Map.put(forms.web_forms_data, "ic#{input_place}", klass)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_style(forms, input_place, style) do
    updated_data = Map.put(forms.web_forms_data, "is#{input_place}", style)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_option_tag(forms, input_place, text, value, selected \\ false) do
    selected_flag = if selected, do: "|1", else: ""
    updated_data = Map.put(forms.web_forms_data, "io#{input_place}", "#{value}|#{text}#{selected_flag}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_checkbox_tag(forms, input_place, text, value, checked \\ false) do
    checked_flag = if checked, do: "|1", else: ""
    updated_data = Map.put(forms.web_forms_data, "ik#{input_place}", "#{value}|#{text}#{checked_flag}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_title(forms, input_place, title) do
    updated_data = Map.put(forms.web_forms_data, "il#{input_place}", title)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_text(forms, input_place, text) do
    formatted_text = String.replace(text, "\n", "$[ln];")
    updated_data = Map.put(forms.web_forms_data, "it#{input_place}", formatted_text)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def insert_attribute(forms, input_place, attribute, value \\ "") do
    updated_data = Map.put(forms.web_forms_data, "ia#{input_place}", "#{attribute}#{if value != "", do: "|#{value}", else: ""}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  # Delete methods
  def delete_id(forms, input_place) do
    updated_data = Map.put(forms.web_forms_data, "di#{input_place}", "1")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_name(forms, input_place) do
    updated_data = Map.put(forms.web_forms_data, "dn#{input_place}", "1")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_value(forms, input_place) do
    updated_data = Map.put(forms.web_forms_data, "dv#{input_place}", "1")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_class(forms, input_place, class_name) do
    updated_data = Map.put(forms.web_forms_data, "dc#{input_place}", class_name)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_style(forms, input_place, style_name) do
    updated_data = Map.put(forms.web_forms_data, "ds#{input_place}", style_name)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_option_tag(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "do#{input_place}", value)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_checkbox_tag(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "dk#{input_place}", value)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_title(forms, input_place) do
    updated_data = Map.put(forms.web_forms_data, "dl#{input_place}", "1")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_text(forms, input_place) do
    updated_data = Map.put(forms.web_forms_data, "dt#{input_place}", "1")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete_attribute(forms, input_place, attribute) do
    updated_data = Map.put(forms.web_forms_data, "da#{input_place}", attribute)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def delete(forms, input_place) do
    updated_data = Map.put(forms.web_forms_data, "de#{input_place}", "1")
    %WebForms{forms | web_forms_data: updated_data}
  end

  # Other methods
  def set_background_color(forms, input_place, color) do
    updated_data = Map.put(forms.web_forms_data, "bc#{input_place}", color)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_text_color(forms, input_place, color) do
    updated_data = Map.put(forms.web_forms_data, "tc#{input_place}", color)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_font_name(forms, input_place, name) do
    updated_data = Map.put(forms.web_forms_data, "fn#{input_place}", name)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_font_size(forms, input_place, size) do
    updated_data = Map.put(forms.web_forms_data, "fs#{input_place}", "#{size}px")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_font_bold(forms, input_place, bold) do
    updated_data = Map.put(forms.web_forms_data, "fb#{input_place}", if bold, do: "1", else: "0")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_visible(forms, input_place, visible) do
    updated_data = Map.put(forms.web_forms_data, "vi#{input_place}", if visible, do: "1", else: "0")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_text_align(forms, input_place, align) do
    updated_data = Map.put(forms.web_forms_data, "ta#{input_place}", align)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_read_only(forms, input_place, read_only) do
    updated_data = Map.put(forms.web_forms_data, "sr#{input_place}", if read_only, do: "1", else: "0")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_disabled(forms, input_place, disabled) do
    updated_data = Map.put(forms.web_forms_data, "sd#{input_place}", if disabled, do: "1", else: "0")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_min_length(forms, input_place, length) do
    updated_data = Map.put(forms.web_forms_data, "mn#{input_place}", "#{length}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_max_length(forms, input_place, length) do
    updated_data = Map.put(forms.web_forms_data, "mx#{input_place}", "#{length}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_selected_value(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "ts#{input_place}", value)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def set_selected_index(forms, input_place, index) do
    updated_data = Map.put(forms.web_forms_data, "ti#{input_place}", "#{index}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def call_script(forms, script_text) do
    formatted_script = String.replace(script_text, "\n", "$[ln];")
    updated_data = Map.put(forms.web_forms_data, "_", formatted_script)
    %WebForms{forms | web_forms_data: updated_data}
  end

  def load_url(forms, input_place, url) do
    updated_data = Map.put(forms.web_forms_data, "lu#{input_place}", url)
    %WebForms{forms | web_forms_data: updated_data}
  end

  # Increase methods
  def increase_min_length(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "+n#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def increase_max_length(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "+x#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def increase_font_size(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "+f#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def increase_width(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "+w#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def increase_height(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "+h#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def increase_value(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "+v#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  # Decrease methods
  def decrease_min_length(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "-n#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def decrease_max_length(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "-x#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def decrease_font_size(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "-f#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def decrease_width(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "-w#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def decrease_height(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "-h#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  def decrease_value(forms, input_place, value) do
    updated_data = Map.put(forms.web_forms_data, "-v#{input_place}", "#{value}")
    %WebForms{forms | web_forms_data: updated_data}
  end

  # Pre Runner methods
  def assign_delay(forms, second, index \\ -1) do
    current_name = get_name_by_index(forms, index)

    if current_name == nil or current_name == "" do
      forms
    else
      change_name_by_index(forms, index, ":#{second})#{current_name}")
    end
  end

  def assign_delay_change(forms, second, index \\ -1) do
    current_name = get_name_by_index(forms, index)

    if current_name == nil or current_name == "" do
      forms
    else
      current_name = remove_outer(current_name, ":", ")")
      change_name_by_index(forms, index, ":#{second})#{current_name}")
    end
  end

  def assign_interval(forms, second, index \\ -1) do
    current_name = get_name_by_index(forms, index)

    if current_name == nil or current_name == "" do
      forms
    else
      change_name_by_index(forms, index, "(#{second})#{current_name}")
    end
  end

  def assign_interval_change(forms, second, index \\ -1) do
    current_name = get_name_by_index(forms, index)

    if current_name == nil or current_name == "" do
      forms
    else
      current_name = remove_outer(current_name, "(", ")")
      change_name_by_index(forms, index, "(#{second})#{current_name}")
    end
  end

  # Get methods
  def get_forms_action_data(forms) do
    forms.web_forms_data
    |> Enum.map(fn {name, value} -> "#{name}=#{value}" end)
    |> Enum.join("\n")
  end

  def response(forms) do
    "[web-forms]#{get_forms_action_data(forms)}"
  end

  def get_forms_action_data_line_break(forms) do
    forms.web_forms_data
    |> Enum.map(fn {name, value} -> "#{name}=#{String.replace(value, "\"", "$[dq];")}" end)
    |> Enum.chunk_every(2)
    |> Enum.reduce("", fn [line, _rest], acc -> acc <> line <> "$[sln];" end)
    |> String.trim_trailing("$[sln];") # To trim the last line break
  end

  # Export methods
  def export_to_web_forms_tag(forms, src \\ nil) do
    "<web-forms ac=\"#{get_forms_action_data_line_break(forms)}\"#{if src != nil and src != "", do: " src=\"#{src}\"", else: ""}></web-forms>"
  end

  def export_to_web_forms_tag_with_size(forms, width, height, src \\ nil) do
    "<web-forms ac=\"#{get_forms_action_data_line_break(forms)}\" width=\"#{width}\" height=\"#{height}\"#{if src != nil and src != "", do: " src=\"#{src}\"", else: ""}></web-forms>"
  end

  def export_to_web_forms_tag_with_size_int(forms, width, height, src \\ nil) do
    export_to_web_forms_tag_with_size(forms, "#{width}px", "#{height}px", src)
  end

  defp get_name_by_index(forms, index) do
    if index < 0 or index >= map_size(forms.web_forms_data), do: nil, else: Map.keys(forms.web_forms_data) |> Enum.at(index)
  end

  defp change_name_by_index(forms, index, new_name) do
    if index < 0 or index >= map_size(forms.web_forms_data), do: forms

    key = Map.keys(forms.web_forms_data) |> Enum.at(index)
    updated_data = Map.put(forms.web_forms_data, new_name, Map.get(forms.web_forms_data, key))
                     |> Map.delete(key)

    %WebForms{forms | web_forms_data: updated_data}
  end

  defp remove_outer(text, start_string, end_string) do
    start = String.index(text, start_string)
    if start == nil do
      text
    else
      finish = String.index(text, end_string, start)
      if finish == nil do
        text
      else
        length_to_remove = (finish - start) + String.length(end_string)
        String.slice(text, 0..(start - 1)) <> String.slice(text, (finish + length_to_remove)..-1)
      end
    end
  end
end

defmodule InputPlace do
  def id(id), do: id

  def name(name), do: "(#{name})"

  def name_with_index(name, index), do: "(#{name})#{index}"

  def tag(tag), do: "<#{tag}>"

  def tag_with_index(tag, index), do: "<#{tag}>#{index}"

  def class_name(klass), do: "{#{klass}}"

  def class_with_index(klass, index), do: "{#{klass}}#{index}"

  def query(query), do: "*#{String.replace(query, "=", "$[eq];")}"

  def query_all(query), do: "[#{String.replace(query, "=", "$[eq];")}"
end

defmodule String do
  def append_place(original, value) do
    cond do
      String.length(original) < 1 -> value
      String.at(original, 0) != ">" -> ">" <> original
      true -> original <> "|" <> value
    end
  end

  def export_to_web_forms_tag(original) do
    "<web-forms src=\"#{original}\"></web-forms>"
  end

  def export_to_web_forms_tag_with_size(original, width, height) do
    "<web-forms src=\"#{original}\" width=\"#{width}\" height=\"#{height}\"></web-forms>"
  end

  def export_action_controls_to_web_forms_tag(original, action_controls) do
    "<web-forms ac=\"#{action_controls}\"></web-forms>"
  end

  def remove_outer(original, start_string, end_string) do
    start = String.index(original, start_string)
    if start == nil do
      original
    else
      finish = String.index(original, end_string, start)
      if finish == nil do
        original
      else
        length_to_remove = (finish - start) + String.length(end_string)
        String.slice(original, 0..(start - 1)) <> String.slice(original, (finish + length_to_remove)..-1)
      end
    end
  end
end