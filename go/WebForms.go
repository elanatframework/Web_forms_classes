package main

import (
	"fmt"
	"strings"
)

type WebForms struct {
	webFormsData map[string]string
}

func NewWebForms() *WebForms {
	return &WebForms{
		webFormsData: make(map[string]string),
	}
}

// Add methods
func (wf *WebForms) AddID(inputPlace, id string) {
	wf.webFormsData["ai"+inputPlace] = id
}

func (wf *WebForms) AddName(inputPlace, name string) {
	wf.webFormsData["an"+inputPlace] = name
}

func (wf *WebForms) AddValue(inputPlace, value string) {
	wf.webFormsData["av"+inputPlace] = value
}

func (wf *WebForms) AddClass(inputPlace, klass string) {
	wf.webFormsData["ac"+inputPlace] = klass
}

func (wf *WebForms) AddStyle(inputPlace, style string) {
	wf.webFormsData["as"+inputPlace] = style
}

func (wf *WebForms) AddOptionTag(inputPlace, text, value string, selected bool) {
	wf.webFormsData["ao"+inputPlace] = fmt.Sprintf("%s|%s%s", value, text, boolToString(selected))
}

func (wf *WebForms) AddCheckboxTag(inputPlace, text, value string, checked bool) {
	wf.webFormsData["ak"+inputPlace] = fmt.Sprintf("%s|%s%s", value, text, boolToString(checked))
}

func (wf *WebForms) AddTitle(inputPlace, title string) {
	wf.webFormsData["al"+inputPlace] = title
}

func (wf *WebForms) AddText(inputPlace, text string) {
	wf.webFormsData["at"+inputPlace] = strings.ReplaceAll(text, "\n", "$[ln];")
}

func (wf *WebForms) AddAttribute(inputPlace, attribute, value string) {
	wf.webFormsData["aa"+inputPlace] = fmt.Sprintf("%s|%s", attribute, value)
}

func (wf *WebForms) AddTag(inputPlace, tagName, id string) {
	if id != "" {
		wf.webFormsData["nt"+inputPlace] = fmt.Sprintf("%s|%s", tagName, id)
	} else {
		wf.webFormsData["nt"+inputPlace] = tagName
	}
}

// Set methods
func (wf *WebForms) SetID(inputPlace, id string) {
	wf.webFormsData["si"+inputPlace] = id
}

func (wf *WebForms) SetName(inputPlace, name string) {
	wf.webFormsData["sn"+inputPlace] = name
}

func (wf *WebForms) SetValue(inputPlace, value string) {
	wf.webFormsData["sv"+inputPlace] = value
}

func (wf *WebForms) SetClass(inputPlace, klass string) {
	wf.webFormsData["sc"+inputPlace] = klass
}

func (wf *WebForms) SetStyle(inputPlace, style string) {
	wf.webFormsData["ss"+inputPlace] = style
}

func (wf *WebForms) SetOptionTag(inputPlace, text, value string, selected bool) {
	wf.webFormsData["so"+inputPlace] = fmt.Sprintf("%s|%s%s", value, text, boolToString(selected))
}

func (wf *WebForms) SetChecked(inputPlace string, checked bool) {
	if checked {
		wf.webFormsData["sk"+inputPlace] = "1"
	} else {
		wf.webFormsData["sk"+inputPlace] = "0"
	}
}

func (wf *WebForms) SetCheckboxTagToList(inputPlace, text, value string, checked bool) {
	wf.webFormsData["sk"+inputPlace] = fmt.Sprintf("%s|%s%s", value, text, boolToString(checked))
}

func (wf *WebForms) SetTitle(inputPlace, title string) {
	wf.webFormsData["sl"+inputPlace] = title
}

func (wf *WebForms) SetText(inputPlace, text string) {
	wf.webFormsData["st"+inputPlace] = strings.ReplaceAll(text, "\n", "$[ln];")
}

func (wf *WebForms) SetAttribute(inputPlace, attribute, value string) {
	if value != "" {
		wf.webFormsData["sa"+inputPlace] = fmt.Sprintf("%s|%s", attribute, value)
	} else {
		wf.webFormsData["sa"+inputPlace] = attribute
	}
}

func (wf *WebForms) SetWidth(inputPlace string, width int) {
	wf.webFormsData["sw"+inputPlace] = fmt.Sprintf("%dpx", width)
}

func (wf *WebForms) SetHeight(inputPlace string, height int) {
	wf.webFormsData["sh"+inputPlace] = fmt.Sprintf("%dpx", height)
}

// Insert methods
func (wf *WebForms) InsertID(inputPlace, id string) {
	wf.webFormsData["ii"+inputPlace] = id
}

func (wf *WebForms) InsertName(inputPlace, name string) {
	wf.webFormsData["in"+inputPlace] = name
}

func (wf *WebForms) InsertValue(inputPlace, value string) {
	wf.webFormsData["iv"+inputPlace] = value
}

func (wf *WebForms) InsertClass(inputPlace, klass string) {
	wf.webFormsData["ic"+inputPlace] = klass
}

func (wf *WebForms) InsertStyle(inputPlace, style string) {
	wf.webFormsData["is"+inputPlace] = style
}

func (wf *WebForms) InsertOptionTag(inputPlace, text, value string, selected bool) {
	wf.webFormsData["io"+inputPlace] = fmt.Sprintf("%s|%s%s", value, text, boolToString(selected))
}

func (wf *WebForms) InsertCheckboxTag(inputPlace, text, value string, checked bool) {
	wf.webFormsData["ik"+inputPlace] = fmt.Sprintf("%s|%s%s", value, text, boolToString(checked))
}

func (wf *WebForms) InsertTitle(inputPlace, title string) {
	wf.webFormsData["il"+inputPlace] = title
}

func (wf *WebForms) InsertText(inputPlace, text string) {
	wf.webFormsData["it"+inputPlace] = strings.ReplaceAll(text, "\n", "$[ln];")
}

func (wf *WebForms) InsertAttribute(inputPlace, attribute, value string) {
	if value != "" {
		wf.webFormsData["ia"+inputPlace] = fmt.Sprintf("%s|%s", attribute, value)
	} else {
		wf.webFormsData["ia"+inputPlace] = attribute
	}
}

// Delete methods
func (wf *WebForms) DeleteID(inputPlace string) {
	wf.webFormsData["di"+inputPlace] = "1"
}

func (wf *WebForms) DeleteName(inputPlace string) {
	wf.webFormsData["dn"+inputPlace] = "1"
}

func (wf *WebForms) DeleteValue(inputPlace string) {
	wf.webFormsData["dv"+inputPlace] = "1"
}

func (wf *WebForms) DeleteClass(inputPlace, className string) {
	wf.webFormsData["dc"+inputPlace] = className
}

func (wf *WebForms) DeleteStyle(inputPlace, styleName string) {
	wf.webFormsData["ds"+inputPlace] = styleName
}

func (wf *WebForms) DeleteOptionTag(inputPlace, value string) {
	wf.webFormsData["do"+inputPlace] = value
}

func (wf *WebForms) DeleteCheckboxTag(inputPlace, value string) {
	wf.webFormsData["dk"+inputPlace] = value
}

func (wf *WebForms) DeleteTitle(inputPlace string) {
	wf.webFormsData["dl"+inputPlace] = "1"
}

func (wf *WebForms) DeleteText(inputPlace string) {
	wf.webFormsData["dt"+inputPlace] = "1"
}

func (wf *WebForms) DeleteAttribute(inputPlace, attribute string) {
	wf.webFormsData["da"+inputPlace] = attribute
}

func (wf *WebForms) Delete(inputPlace string) {
	wf.webFormsData["de"+inputPlace] = "1"
}

// Other methods
func (wf *WebForms) SetBackgroundColor(inputPlace, color string) {
	wf.webFormsData["bc"+inputPlace] = color
}

func (wf *WebForms) SetTextColor(inputPlace, color string) {
	wf.webFormsData["tc"+inputPlace] = color
}

func (wf *WebForms) SetFontName(inputPlace, name string) {
	wf.webFormsData["fn"+inputPlace] = name
}

func (wf *WebForms) SetFontSize(inputPlace string, size int) {
	wf.webFormsData["fs"+inputPlace] = fmt.Sprintf("%dpx", size)
}

func (wf *WebForms) SetFontBold(inputPlace string, bold bool) {
	if bold {
		wf.webFormsData["fb"+inputPlace] = "1"
	} else {
		wf.webFormsData["fb"+inputPlace] = "0"
	}
}

func (wf *WebForms) SetVisible(inputPlace string, visible bool) {
	if visible {
		wf.webFormsData["vi"+inputPlace] = "1"
	} else {
		wf.webFormsData["vi"+inputPlace] = "0"
	}
}

func (wf *WebForms) SetTextAlign(inputPlace, align string) {
	wf.webFormsData["ta"+inputPlace] = align
}

func (wf *WebForms) SetReadOnly(inputPlace string, readOnly bool) {
	if readOnly {
		wf.webFormsData["sr"+inputPlace] = "1"
	} else {
		wf.webFormsData["sr"+inputPlace] = "0"
	}
}

func (wf *WebForms) SetDisabled(inputPlace string, disabled bool) {
	if disabled {
		wf.webFormsData["sd"+inputPlace] = "1"
	} else {
		wf.webFormsData["sd"+inputPlace] = "0"
	}
}

func (wf *WebForms) SetMinLength(inputPlace string, length int) {
	wf.webFormsData["mn"+inputPlace] = fmt.Sprint(length)
}

func (wf *WebForms) SetMaxLength(inputPlace string, length int) {
	wf.webFormsData["mx"+inputPlace] = fmt.Sprint(length)
}

func (wf *WebForms) SetSelectedValue(inputPlace, value string) {
	wf.webFormsData["ts"+inputPlace] = value
}

func (wf *WebForms) SetSelectedIndex(inputPlace string, index int) {
	wf.webFormsData["ti"+inputPlace] = fmt.Sprint(index)
}

func (wf *WebForms) CallScript(scriptText string) {
	wf.webFormsData["_"] = strings.ReplaceAll(scriptText, "\n", "$[ln];")
}

func (wf *WebForms) LoadURL(inputPlace, url string) {
	wf.webFormsData["lu"+inputPlace] = url
}

// Increase methods
func (wf *WebForms) IncreaseMinLength(inputPlace string, value int) {
	wf.webFormsData["+n"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) IncreaseMaxLength(inputPlace string, value int) {
	wf.webFormsData["+x"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) IncreaseFontSize(inputPlace string, value int) {
	wf.webFormsData["+f"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) IncreaseWidth(inputPlace string, value int) {
	wf.webFormsData["+w"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) IncreaseHeight(inputPlace string, value int) {
	wf.webFormsData["+h"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) IncreaseValue(inputPlace string, value int) {
	wf.webFormsData["+v"+inputPlace] = fmt.Sprint(value)
}

// Decrease methods
func (wf *WebForms) DecreaseMinLength(inputPlace string, value int) {
	wf.webFormsData["-n"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) DecreaseMaxLength(inputPlace string, value int) {
	wf.webFormsData["-x"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) DecreaseFontSize(inputPlace string, value int) {
	wf.webFormsData["-f"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) DecreaseWidth(inputPlace string, value int) {
	wf.webFormsData["-w"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) DecreaseHeight(inputPlace string, value int) {
	wf.webFormsData["-h"+inputPlace] = fmt.Sprint(value)
}

func (wf *WebForms) DecreaseValue(inputPlace string, value int) {
	wf.webFormsData["-v"+inputPlace] = fmt.Sprint(value)
}

// Pre Runner methods
func (wf *WebForms) AssignDelay(second int, index int) {
	currentName := wf.getNameByIndex(index)
	if currentName == "" {
		return
	}
	wf.ChangeNameByIndex(index, fmt.Sprintf(":%d)%s", second, currentName))
}

func (wf *WebForms) AssignDelayChange(second int, index int) {
	currentName := wf.getNameByIndex(index)
	if currentName == "" {
		return
	}
	currentName = wf.RemoveOuter(currentName, ":", ")")
	wf.ChangeNameByIndex(index, fmt.Sprintf(":%d)%s", second, currentName))
}

func (wf *WebForms) AssignInterval(second int, index int) {
	currentName := wf.getNameByIndex(index)
	if currentName == "" {
		return
	}
	wf.ChangeNameByIndex(index, fmt.Sprintf("(%d)%s", second, currentName))
}

func (wf *WebForms) AssignIntervalChange(second int, index int) {
	currentName := wf.getNameByIndex(index)
	if currentName == "" {
		return
	}
	currentName = wf.RemoveOuter(currentName, "(", ")")
	wf.ChangeNameByIndex(index, fmt.Sprintf("(%d)%s", second, currentName))
}

func (wf *WebForms) GetFormsActionData() string {
	var returnValue strings.Builder
	for name, value := range wf.webFormsData {
		returnValue.WriteString(fmt.Sprintf("\n%s=%s", name, value))
	}
	return returnValue.String()
}

func (wf *WebForms) Response() string {
	return "[web-forms]" + wf.GetFormsActionData()
}

func (wf *WebForms) GetFormsActionDataLineBreak() string {
	var returnValue strings.Builder
	webFormsDataList := make([][2]string, 0, len(wf.webFormsData))
	for k, v := range wf.webFormsData {
		webFormsDataList = append(webFormsDataList, [2]string{k, v})
	}
	
	i := len(webFormsDataList)
	for _, nv := range webFormsDataList {
		returnValue.WriteString(fmt.Sprintf("%s=%s", nv[0], strings.ReplaceAll(nv[1], "\"", "$[dq];")))
		if i--; i > 1 {
			returnValue.WriteString("$[sln];")
		}
	}
	return returnValue.String()
}

func (wf *WebForms) ExportToWebFormsTag(src string) string {
	if src == "" {
		return fmt.Sprintf("<web-forms ac=\"%s\"></web-forms>", wf.GetFormsActionDataLineBreak())
	}
	return fmt.Sprintf("<web-forms ac=\"%s\" src=\"%s\"></web-forms>", wf.GetFormsActionDataLineBreak(), src)
}

// Overloaded methods
func (wf *WebForms) ExportToWebFormsTagWithSize(width, height int, src string) string {
	if src == "" {
		return fmt.Sprintf("<web-forms ac=\"%s\" width=\"%d\" height=\"%d\"></web-forms>", wf.GetFormsActionDataLineBreak(), width, height)
	}
	return fmt.Sprintf("<web-forms ac=\"%s\" width=\"%d\" height=\"%d\" src=\"%s\"></web-forms>", wf.GetFormsActionDataLineBreak(), width, height, src)
}

func (wf *WebForms) ExportToWebFormsTagWithSizeInt(width, height int, src string) string {
	return wf.ExportToWebFormsTagWithSize(width, height, src)
}

func (wf *WebForms) getNameByIndex(index int) string {
	if index < 0 || index >= len(wf.webFormsData) {
		return ""
	}
	var key string
	for k, i := range wf.webFormsData {
		if i == k {
			key = k
			index--
		}
		if index < 0 {
			return key
		}
	}
	return ""
}

func (wf *WebForms) ChangeNameByIndex(index int, newName string) {
	if index < 0 || index >= len(wf.webFormsData) {
		return
	}
	key := wf.getNameByIndex(index)
	if key == "" {
		return
	}
	wf.webFormsData[newName] = wf.webFormsData[key]
	delete(wf.webFormsData, key)
}

func (wf *WebForms) RemoveOuter(text, startString, endString string) string {
	start := strings.Index(text, startString)
	if start == -1 {
		return text
	}
	finish := strings.Index(text[start:], endString)
	if finish == -1 {
		return text
	}
	finish += start
	lengthToRemove := (finish - start) + len(endString)
	return text[0:start] + text[(finish+1):]
}

func boolToString(b bool) string {
	if b {
		return "|1"
	}
	return ""
}

type InputPlace struct{}

func (ip *InputPlace) ID(id string) string {
	return id
}

func (ip *InputPlace) Name(name string) string {
	return fmt.Sprintf("(%s)", name)
}

func (ip *InputPlace) NameWithIndex(name string, index int) string {
	return fmt.Sprintf("(%s)%d", name, index)
}

func (ip *InputPlace) Tag(tag string) string {
	return fmt.Sprintf("<%s>", tag)
}

func (ip *InputPlace) TagWithIndex(tag string, index int) string {
	return fmt.Sprintf("<%s>%d", tag, index)
}

func (ip *InputPlace) ClassName(klass string) string {
	return fmt.Sprintf("{%s}", klass)
}

func (ip *InputPlace) ClassWithIndex(klass string, index int) string {
	return fmt.Sprintf("{%s}%d", klass, index)
}

func (ip *InputPlace) Query(query string) string {
	return fmt.Sprintf("*%s", strings.ReplaceAll(query, "=", "$[eq];"))
}

func (ip *InputPlace) QueryAll(query string) string {
	return fmt.Sprintf("[%s", strings.ReplaceAll(query, "=", "$[eq];"))
}

func (s *string) AppendPlace(value string) string {
	if len(*s) < 1 {
		return value
	}
	if (*s)[0] != '>' {
		return ">" + *s
	}
	return *s + "|" + value
}

func (s *string) ExportToWebFormsTag() string {
	return fmt.Sprintf("<web-forms src=\"%s\"></web-forms>", *s)
}

func (s *string) ExportToWebFormsTagWithSize(width, height int) string {
	return fmt.Sprintf("<web-forms src=\"%s\" width=\"%d\" height=\"%d\"></web-forms>", *s, width, height)
}

func (s *string) ExportActionControlsToWebFormsTag(actionControls string) string {
	return fmt.Sprintf("<web-forms ac=\"%s\"></web-forms>", actionControls)
}

func (s *string) RemoveOuter(startString, endString string) string {
	start := strings.Index(*s, startString)
	if start == -1 {
		return *s
	}
	finish := strings.Index(*s[start:], endString)
	if finish == -1 {
		return *s
	}
	finish += start
	lengthToRemove := (finish - start) + len(endString)
	return (*s)[0:start] + (*s)[(finish+1):]
}