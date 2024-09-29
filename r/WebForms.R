library(BH)

NameValueCollection <- setRefClass("NameValueCollection",
                                    fields = list(
                                      data = "environment"
                                    ),
                                    methods = list(
                                      initialize = function() {
                                        data <<- new.env(hash = TRUE)
                                      },
                                      add = function(key, value) {
                                        assign(key, value, envir = data)
                                      },
                                      get = function(key) {
                                        if (exists(key, envir = data)) {
                                          return(get(key, envir = data))
                                        } else {
                                          return(NULL)
                                        }
                                      },
                                      get_list = function() {
                                        as.list(data)
                                      },
                                      change_name_by_index = function(index, new_name) {
                                        keys <- ls(data)
                                        if (index <= length(keys)) {
                                          key <- keys[index]
                                          value <- get(key, envir = data)
                                          rm(list = key, envir = data)
                                          add(new_name, value)
                                        }
                                      },
                                      get_name_by_index = function(index) {
                                        keys <- ls(data)
                                        if (index <= length(keys)) {
                                          return(keys[index])
                                        } else {
                                          return(NULL)
                                        }
                                      }
                                    ))

WebForms <- setRefClass("WebForms",
                        fields = list(
                          web_forms_data = "NameValueCollection"
                        ),
                        methods = list(
                          initialize = function() {
                            web_forms_data <<- NameValueCollection$new()
                          },
                          add_id = function(input_place, id) {
                            web_forms_data$add(paste0("ai", input_place), id)
                          },
                          add_name = function(input_place, name) {
                            web_forms_data$add(paste0("an", input_place), name)
                          },
                          add_value = function(input_place, value) {
                            web_forms_data$add(paste0("av", input_place), value)
                          },
                          add_class = function(input_place, class) {
                            web_forms_data$add(paste0("ac", input_place), class)
                          },
                          add_style = function(input_place, style) {
                            web_forms_data$add(paste0("as", input_place), style)
                          },
                          add_option_tag = function(input_place, text, value, selected) {
                            web_forms_data$add(paste0("ao", input_place), paste0(value, "|", text, if (selected) "|1" else ""))
                          },
                          add_checkbox_tag = function(input_place, text, value, checked) {
                            web_forms_data$add(paste0("ak", input_place), paste0(value, "|", text, if (checked) "|1" else ""))
                          },
                          add_title = function(input_place, title) {
                            web_forms_data$add(paste0("al", input_place), title)
                          },
                          add_text = function(input_place, text) {
                            web_forms_data$add(paste0("at", input_place), gsub("\n", "$[ln];", text))
                          },
                          add_attribute = function(input_place, attribute, value) {
                            web_forms_data$add(paste0("aa", input_place), paste0(attribute, "|", value))
                          },
                          add_tag = function(input_place, tag_name, id) {
                            web_forms_data$add(paste0("nt", input_place), paste0(tag_name, if (nzchar(id)) paste0("|", id) else ""))
                          },
                          # Set Methods
                          set_id = function(input_place, id) {
                            web_forms_data$add(paste0("si", input_place), id)
                          },
                          set_name = function(input_place, name) {
                            web_forms_data$add(paste0("sn", input_place), name)
                          },
                          set_value = function(input_place, value) {
                            web_forms_data$add(paste0("sv", input_place), value)
                          },
                          set_class = function(input_place, class) {
                            web_forms_data$add(paste0("sc", input_place), class)
                          },
                          set_style = function(input_place, style) {
                            web_forms_data$add(paste0("ss", input_place), style)
                          },
                          set_option_tag = function(input_place, text, value, selected) {
                            web_forms_data$add(paste0("so", input_place), paste0(value, "|", text, if (selected) "|1" else ""))
                          },
                          set_checked = function(input_place, checked) {
                            web_forms_data$add(paste0("sk", input_place), if (checked) "1" else "0")
                          },
                          set_checkbox_tag_to_list = function(input_place, text, value, checked) {
                            web_forms_data$add(paste0("sk", input_place), paste0(value, "|", text, if (checked) "|1" else ""))
                          },
                          set_title = function(input_place, title) {
                            web_forms_data$add(paste0("sl", input_place), title)
                          },
                          set_text = function(input_place, text) {
                            web_forms_data$add(paste0("st", input_place), gsub("\n", "$[ln];", text))
                          },
                          set_attribute = function(input_place, attribute, value) {
                            web_forms_data$add(paste0("sa", input_place), paste0(attribute, "|", value))
                          },
                          set_width = function(input_place, width) {
                            web_forms_data$add(paste0("sw", input_place), width)
                          },
                          set_height = function(input_place, height) {
                            web_forms_data$add(paste0("sh", input_place), height)
                          },
                          insert_id = function(input_place, id) {
                            web_forms_data$add(paste0("ii", input_place), id)
                          },
                          insert_name = function(input_place, name) {
                            web_forms_data$add(paste0("in", input_place), name)
                          },
                          insert_value = function(input_place, value) {
                            web_forms_data$add(paste0("iv", input_place), value)
                          },
                          insert_class = function(input_place, class) {
                            web_forms_data$add(paste0("ic", input_place), class)
                          },
                          insert_style = function(input_place, style) {
                            web_forms_data$add(paste0("is", input_place), style)
                          },
                          insert_option_tag = function(input_place, text, value, selected) {
                            web_forms_data$add(paste0("io", input_place), paste0(value, "|", text, if (selected) "|1" else ""))
                          },
                          insert_checkbox_tag = function(input_place, text, value, checked) {
                            web_forms_data$add(paste0("ik", input_place), paste0(value, "|", text, if (checked) "|1" else ""))
                          },
                          insert_title = function(input_place, title) {
                            web_forms_data$add(paste0("il", input_place), title)
                          },
                          insert_text = function(input_place, text) {
                            web_forms_data$add(paste0("it", input_place), gsub("\n", "$[ln];", text))
                          },
                          insert_attribute = function(input_place, attribute, value) {
                            web_forms_data$add(paste0("ia", input_place), paste0(attribute, "|", value))
                          },
                          delete_id = function(input_place) {
                            web_forms_data$add(paste0("di", input_place), "1")
                          },
                          delete_name = function(input_place) {
                            web_forms_data$add(paste0("dn", input_place), "1")
                          },
                          delete_value = function(input_place) {
                            web_forms_data$add(paste0("dv", input_place), "1")
                          },
                          delete_class = function(input_place, class_name) {
                            web_forms_data$add(paste0("dc", input_place), class_name)
                          },
                          delete_style = function(input_place, style_name) {
                            web_forms_data$add(paste0("ds", input_place), style_name)
                          },
                          delete_option_tag = function(input_place, value) {
                            web_forms_data$add(paste0("do", input_place), value)
                          },
                          delete_checkbox_tag = function(input_place, value) {
                            web_forms_data$add(paste0("dk", input_place), value)
                          },
                          delete_title = function(input_place) {
                            web_forms_data$add(paste0("dl", input_place), "1")
                          },
                          delete_text = function(input_place) {
                            web_forms_data$add(paste0("dt", input_place), "1")
                          },
                          delete_attribute = function(input_place, attribute) {
                            web_forms_data$add(paste0("da", input_place), attribute)
                          },
                          delete = function(input_place) {
                            web_forms_data$add(paste0("de", input_place), "1")
                          },
                          # Other Methods
                          set_background_color = function(input_place, color) {
                            web_forms_data$add(paste0("bc", input_place), color)
                          },
                          set_text_color = function(input_place, color) {
                            web_forms_data$add(paste0("tc", input_place), color)
                          },
                          set_font_name = function(input_place, name) {
                            web_forms_data$add(paste0("fn", input_place), name)
                          },
                          set_font_size = function(input_place, size) {
                            web_forms_data$add(paste0("fs", input_place), size)
                          },
                          set_font_bold = function(input_place, bold) {
                            web_forms_data$add(paste0("fb", input_place), if (bold) "1" else "0")
                          },
                          set_visible = function(input_place, visible) {
                            web_forms_data$add(paste0("vi", input_place), if (visible) "1" else "0")
                          },
                          set_text_align = function(input_place, align) {
                            web_forms_data$add(paste0("ta", input_place), align)
                          },
                          set_read_only = function(input_place, read_only) {
                            web_forms_data$add(paste0("sr", input_place), if (read_only) "1" else "0")
                          },
                          set_disabled = function(input_place, disabled) {
                            web_forms_data$add(paste0("sd", input_place), if (disabled) "1" else "0")
                          },
                          set_min_length = function(input_place, length) {
                            web_forms_data$add(paste0("mn", input_place), length)
                          },
                          set_max_length = function(input_place, length) {
                            web_forms_data$add(paste0("mx", input_place), length)
                          },
                          set_selected_value = function(input_place, value) {
                            web_forms_data$add(paste0("ts", input_place), value)
                          },
                          set_selected_index = function(input_place, index) {
                            web_forms_data$add(paste0("ti", input_place), index)
                          },
                          set_checked_value = function(input_place, value, selected) {
                            web_forms_data$add(paste0("ks", input_place), paste0(value, "|", if (selected) "1" else "0"))
                          },
                          call_script = function(script_text) {
                            web_forms_data$add("_", gsub("\n", "$[ln];", script_text))
                          },
                          load_url = function(input_place, url) {
                            web_forms_data$add(paste0("lu", input_place), url)
                          },
                          # Increase Methods
                          increase_min_length = function(input_place, value) {
                            web_forms_data$add(paste0("+n", input_place), value)
                          },
                          increase_max_length = function(input_place, value) {
                            web_forms_data$add(paste0("+x", input_place), value)
                          },
                          increase_font_size = function(input_place, value) {
                            web_forms_data$add(paste0("+f", input_place), value)
                          },
                          increase_width = function(input_place, value) {
                            web_forms_data$add(paste0("+w", input_place), value)
                          },
                          increase_height = function(input_place, value) {
                            web_forms_data$add(paste0("+h", input_place), value)
                          },
                          increase_value = function(input_place, value) {
                            web_forms_data$add(paste0("+v", input_place), value)
                          },
                          # Decrease Methods
                          decrease_min_length = function(input_place, value) {
                            web_forms_data$add(paste0("-n", input_place), value)
                          },
                          decrease_max_length = function(input_place, value) {
                            web_forms_data$add(paste0("-x", input_place), value)
                          },
                          decrease_font_size = function(input_place, value) {
                            web_forms_data$add(paste0("-f", input_place), value)
                          },
                          decrease_width = function(input_place, value) {
                            web_forms_data$add(paste0("-w", input_place), value)
                          },
                          decrease_height = function(input_place, value) {
                            web_forms_data$add(paste0("-h", input_place), value)
                          },
                          decrease_value = function(input_place, value) {
                            web_forms_data$add(paste0("-v", input_place), value)
                          },
                          # Get Methods
                          get_forms_action_data = function() {
                            return_value <- ""
                            for (key in ls(web_forms_data$data)) {
                              value <- get(key, envir = web_forms_data$data)
                              return_value <- paste0(return_value, "\n", key, "=", value)
                            }
                            return(return_value)
                          },
                          response = function() {
                            return(paste0("[web-forms]", get_forms_action_data()))
                          },
                          get_forms_action_data_line_break = function() {
                            web_forms_data_list <- ls(web_forms_data$data)
                            return_value <- ""
                            i <- length(web_forms_data_list)
                            
                            for (key in web_forms_data_list) {
                              value <- get(key, envir = web_forms_data$data)
                              return_value <- paste0(return_value, key, "=", gsub("\"", "$[dq];", value))
                              return_value <- paste0(return_value, if (i-- > 1) "$[sln];" else "")
                            }
                            
                            return(return_value)
                          },

                          export_to_web_forms_tag = function(src = NULL) {
                            tag <- paste0("<web-forms ac=\"", get_forms_action_data_line_break(), "\"")
                            if (!is.null(src)) {
                              tag <- paste0(tag, " src=\"", src, "\"")
                            }
                            tag <- paste0(tag, "></web-forms>")
                            return(tag)
                          },
                          export_to_web_forms_tag_with_size = function(width, height, src = NULL) {
                            tag <- paste0("<web-forms ac=\"", get_forms_action_data_line_break(), "\" width=\"", width, "\" height=\"", height, "\"")
                            if (!is.null(src)) {
                              tag <- paste0(tag, " src=\"", src, "\"")
                            }
                            tag <- paste0(tag, "></web-forms>")
                            return(tag)
                          },
                          export_to_web_forms_tag_with_int_size = function(width, height, src = NULL) {
                            export_to_web_forms_tag_with_size(as.character(width), as.character(height), src)
                          }
                        ))

InputPlace <- setRefClass("InputPlace",
                          methods = list(
                            id = function(id) {
                              return(as.character(id))
                            },
                            name = function(name) {
                              return(paste0("(", name, ")"))
                            },
                            name_index = function(name, index) {
                              return(paste0("(", name, ")", index))
                            },
                            tag = function(tag) {
                              return(paste0("<", tag, ">"))
                            },
                            tag_index = function(tag, index) {
                              return(paste0("<", tag, ">", index))
                            },
                            class = function(class) {
                              return(paste0("{", class, "}"))
                            },
                            class_index = function(class, index) {
                              return(paste0("{", class, "}", index))
                            },
                            query = function(query) {
                              return(paste0("*", gsub("=", "$[eq];", query)))
                            },
                            query_all = function(query) {
                              return(paste0("[", gsub("=", "$[eq];", query), "]"))
                            }
                          ))

setRefClass("ExtensionWebFormsMethods",
            fields = list(
              value = "character"
            ),
            methods = list(
              append_place = function(value) {
                text <- self$value
                if (nchar(text) < 1) {
                  return(value)
                }
                
                if (substr(text, 1, 1) != ">") {
                  text <- paste0(">", text)
                }
                
                return(paste0(text, "|", value))
              },
              export_to_web_forms_tag = function() {
                return(paste0("<web-forms src=\"", self$value, "\"></web-forms>"))
              },
              export_to_web_forms_tag_with_size = function(width, height) {
                return(paste0("<web-forms src=\"", self$value, "\" width=\"", width, "\" height=\"", height, "\"></web-forms>"))
              },
              export_action_controls_to_web_forms_tag = function(action_controls) {
                return(paste0("<web-forms ac=\"", action_controls, "\"></web-forms>"))
              },
              remove_outer = function(start_string, end_string) {
                start_index <- regexpr(start_string, self$value)
                end_index <- regexpr(end_string, self$value)
                
                if (start_index[1] <= 0 || end_index[1] <= 0) {
                  return(self$value)
                }
                
                end_index_value <- end_index + nchar(end_string) - 1    
                length_to_remove <- end_index_value - start_index
                
                result <- self$value
                result <- substr(result, 1, start_index[1] - 1)
                result <- paste0(result, substr(self$value, end_index_value + 1, nchar(self$value)))
                
                return(result)
              }
            ))