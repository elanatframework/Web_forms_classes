import Foundation

class WebForms {
    private var webFormsData = [String: String]()

    // Add
    func addId(_ inputPlace: String, _ id: String) {
        webFormsData["ai\(inputPlace)"] = id
    }
    
    func addName(_ inputPlace: String, _ name: String) {
        webFormsData["an\(inputPlace)"] = name
    }
    
    func addValue(_ inputPlace: String, _ value: String) {
        webFormsData["av\(inputPlace)"] = value
    }
    
    func addClass(_ inputPlace: String, _ className: String) {
        webFormsData["ac\(inputPlace)"] = className
    }
    
    func addStyle(_ inputPlace: String, _ style: String) {
        webFormsData["as\(inputPlace)"] = style
    }
    
    func addOptionTag(_ inputPlace: String, text: String, value: String, selected: Bool = false) {
        webFormsData["ao\(inputPlace)"] = "\(value)|\(text)\(selected ? "|1" : "")"
    }
    
    func addCheckBoxTag(_ inputPlace: String, text: String, value: String, checked: Bool = false) {
        webFormsData["ak\(inputPlace)"] = "\(value)|\(text)\(checked ? "|1" : "")"
    }
    
    func addTitle(_ inputPlace: String, _ title: String) {
        webFormsData["al\(inputPlace)"] = title
    }
    
    func addText(_ inputPlace: String, _ text: String) {
        webFormsData["at\(inputPlace)"] = text.replacingOccurrences(of: "\n", with: "$[ln];")
    }
    
    func addAttribute(_ inputPlace: String, _ attribute: String, _ value: String = "") {
        webFormsData["aa\(inputPlace)"] = "\(attribute)|\(value)"
    }
    
    func addTag(_ inputPlace: String, tagName: String, id: String = "") {
        webFormsData["nt\(inputPlace)"] = "\(tagName)\(id.isEmpty ? "" : "|\(id)")"
    }

    // Set
    func setId(_ inputPlace: String, _ id: String) {
        webFormsData["si\(inputPlace)"] = id
    }
    
    func setName(_ inputPlace: String, _ name: String) {
        webFormsData["sn\(inputPlace)"] = name
    }
    
    func setValue(_ inputPlace: String, _ value: String) {
        webFormsData["sv\(inputPlace)"] = value
    }
    
    func setClass(_ inputPlace: String, _ className: String) {
        webFormsData["sc\(inputPlace)"] = className
    }
    
    func setStyle(_ inputPlace: String, _ style: String) {
        webFormsData["ss\(inputPlace)"] = style
    }
    
    func setOptionTag(_ inputPlace: String, text: String, value: String, selected: Bool = false) {
        webFormsData["so\(inputPlace)"] = "\(value)|\(text)\(selected ? "|1" : "")"
    }
    
    func setChecked(_ inputPlace: String, _ checked: Bool = false) {
        webFormsData["sk\(inputPlace)"] = checked ? "1" : "0"
    }
    
    func setCheckBoxTagToList(_ inputPlace: String, text: String, value: String, checked: Bool = false) {
        webFormsData["sk\(inputPlace)"] = "\(value)|\(text)\(checked ? "|1" : "")"
    }

    func setTitle(_ inputPlace: String, _ title: String) {
        webFormsData["sl\(inputPlace)"] = title
    }

    func setText(_ inputPlace: String, _ text: String) {
        webFormsData["st\(inputPlace)"] = text.replacingOccurrences(of: "\n", with: "$[ln];")
    }

    func setAttribute(_ inputPlace: String, _ attribute: String, _ value: String = "") {
        webFormsData["sa\(inputPlace)"] = "\(attribute)\(value.isEmpty ? "" : "|\(value)")"
    }

    func setWidth(_ inputPlace: String, _ width: String) {
        webFormsData["sw\(inputPlace)"] = width
    }

    func setWidth(_ inputPlace: String, _ width: Int) {
        setWidth(inputPlace, "\(width)px")
    }

    func setHeight(_ inputPlace: String, _ height: String) {
        webFormsData["sh\(inputPlace)"] = height
    }

    func setHeight(_ inputPlace: String, _ height: Int) {
        setHeight(inputPlace, "\(height)px")
    }

    // Insert
    func insertId(_ inputPlace: String, _ id: String) {
        webFormsData["ii\(inputPlace)"] = id
    }
    
    func insertName(_ inputPlace: String, _ name: String) {
        webFormsData["in\(inputPlace)"] = name
    }
    
    func insertValue(_ inputPlace: String, _ value: String) {
        webFormsData["iv\(inputPlace)"] = value
    }
    
    func insertClass(_ inputPlace: String, _ className: String) {
        webFormsData["ic\(inputPlace)"] = className
    }
    
    func insertStyle(_ inputPlace: String, _ style: String) {
        webFormsData["is\(inputPlace)"] = style
    }
    
    func insertOptionTag(_ inputPlace: String, text: String, value: String, selected: Bool = false) {
        webFormsData["io\(inputPlace)"] = "\(value)|\(text)\(selected ? "|1" : "")"
    }
    
    func insertCheckBoxTag(_ inputPlace: String, text: String, value: String, checked: Bool = false) {
        webFormsData["ik\(inputPlace)"] = "\(value)|\(text)\(checked ? "|1" : "")"
    }
    
    func insertTitle(_ inputPlace: String, _ title: String) {
        webFormsData["il\(inputPlace)"] = title
    }
    
    func insertText(_ inputPlace: String, _ text: String) {
        webFormsData["it\(inputPlace)"] = text.replacingOccurrences(of: "\n", with: "$[ln];")
    }
    
    func insertAttribute(_ inputPlace: String, _ attribute: String, _ value: String = "") {
        webFormsData["ia\(inputPlace)"] = "\(attribute)\(value.isEmpty ? "" : "|\(value)")"
    }

    // Delete
    func deleteId(_ inputPlace: String) {
        webFormsData["di\(inputPlace)"] = "1"
    }
    
    func deleteName(_ inputPlace: String) {
        webFormsData["dn\(inputPlace)"] = "1"
    }
    
    func deleteValue(_ inputPlace: String) {
        webFormsData["dv\(inputPlace)"] = "1"
    }
    
    func deleteClass(_ inputPlace: String, _ className: String) {
        webFormsData["dc\(inputPlace)"] = className
    }
    
    func deleteStyle(_ inputPlace: String, _ styleName: String) {
        webFormsData["ds\(inputPlace)"] = styleName
    }
    
    func deleteOptionTag(_ inputPlace: String, _ value: String) {
        webFormsData["do\(inputPlace)"] = value
    }
    
    func deleteCheckBoxTag(_ inputPlace: String, _ value: String) {
        webFormsData["dk\(inputPlace)"] = value
    }
    
    func deleteTitle(_ inputPlace: String) {
        webFormsData["dl\(inputPlace)"] = "1"
    }
    
    func deleteText(_ inputPlace: String) {
        webFormsData["dt\(inputPlace)"] = "1"
    }
    
    func deleteAttribute(_ inputPlace: String, _ attribute: String) {
        webFormsData["da\(inputPlace)"] = attribute
    }
    
    func delete(_ inputPlace: String) {
        webFormsData["de\(inputPlace)"] = "1"
    }

    // Other
    func setBackgroundColor(_ inputPlace: String, _ color: String) {
        webFormsData["bc\(inputPlace)"] = color
    }
    
    func setTextColor(_ inputPlace: String, _ color: String) {
        webFormsData["tc\(inputPlace)"] = color
    }
    
    func setFontName(_ inputPlace: String, _ name: String) {
        webFormsData["fn\(inputPlace)"] = name
    }
    
    func setFontSize(_ inputPlace: String, _ size: String) {
        webFormsData["fs\(inputPlace)"] = size
    }
    
    func setFontSize(_ inputPlace: String, _ size: Int) {
        setFontSize(inputPlace, "\(size)px")
    }
    
    func setFontBold(_ inputPlace: String, _ bold: Bool) {
        webFormsData["fb\(inputPlace)"] = bold ? "1" : "0"
    }
    
    func setVisible(_ inputPlace: String, _ visible: Bool) {
        webFormsData["vi\(inputPlace)"] = visible ? "1" : "0"
    }
    
    func setTextAlign(_ inputPlace: String, _ align: String) {
        webFormsData["ta\(inputPlace)"] = align
    }
    
    func setReadOnly(_ inputPlace: String, _ readOnly: Bool) {
        webFormsData["sr\(inputPlace)"] = readOnly ? "1" : "0"
    }
    
    func setDisabled(_ inputPlace: String, _ disabled: Bool) {
        webFormsData["sd\(inputPlace)"] = disabled ? "1" : "0"
    }
    
    func setMinLength(_ inputPlace: String, _ length: Int) {
        webFormsData["mn\(inputPlace)"] = "\(length)"
    }
    
    func setMaxLength(_ inputPlace: String, _ length: Int) {
        webFormsData["mx\(inputPlace)"] = "\(length)"
    }
    
    func setSelectedValue(_ inputPlace: String, _ value: String) {
        webFormsData["ts\(inputPlace)"] = value
    }
    
    func setSelectedIndex(_ inputPlace: String, _ index: Int) {
        webFormsData["ti\(inputPlace)"] = "\(index)"
    }
    
    func setCheckedValue(_ inputPlace: String, _ value: String, _ selected: Bool) {
        webFormsData["ks\(inputPlace)"] = "\(value)|\(selected ? "1" : "0")"
    }
    
    func setCheckedIndex(_ inputPlace: String, _ index: Int, _ selected: Bool) {
        webFormsData["ki\(inputPlace)"] = "\(index)|\(selected ? "1" : "0")"
    }
    
    func callScript(_ scriptText: String) {
        webFormsData["_"] = scriptText.replacingOccurrences(of: "\n", with: "$[ln];")
    }
    
    func loadUrl(_ inputPlace: String, _ url: String) {
        webFormsData["lu\(inputPlace)"] = url
    }

    // Increase
    func increaseMinLength(_ inputPlace: String, _ value: Int) {
        webFormsData["+n\(inputPlace)"] = "\(value)"
    }
    
    func increaseMaxLength(_ inputPlace: String, _ value: Int) {
        webFormsData["+x\(inputPlace)"] = "\(value)"
    }
    
    func increaseFontSize(_ inputPlace: String, _ value: Int) {
        webFormsData["+f\(inputPlace)"] = "\(value)"
    }
    
    func increaseWidth(_ inputPlace: String, _ value: Int) {
        webFormsData["+w\(inputPlace)"] = "\(value)"
    }
    
    func increaseHeight(_ inputPlace: String, _ value: Int) {
        webFormsData["+h\(inputPlace)"] = "\(value)"
    }
    
    func increaseValue(_ inputPlace: String, _ value: Int) {
        webFormsData["+v\(inputPlace)"] = "\(value)"
    }

    // Decrease
    func decreaseMinLength(_ inputPlace: String, _ value: Int) {
        webFormsData["-n\(inputPlace)"] = "\(value)"
    }
    
    func decreaseMaxLength(_ inputPlace: String, _ value: Int) {
        webFormsData["-x\(inputPlace)"] = "\(value)"
    }
    
    func decreaseFontSize(_ inputPlace: String, _ value: Int) {
        webFormsData["-f\(inputPlace)"] = "\(value)"
    }
    
    func decreaseWidth(_ inputPlace: String, _ value: Int) {
        webFormsData["-w\(inputPlace)"] = "\(value)"
    }
    
    func decreaseHeight(_ inputPlace: String, _ value: Int) {
        webFormsData["-h\(inputPlace)"] = "\(value)"
    }
    
    func decreaseValue(_ inputPlace: String, _ value: Int) {
        webFormsData["-v\(inputPlace)"] = "\(value)"
    }

    // Pre Runner
    func assignDelay(_ second: Float, index: Int = -1) {
        guard let currentName = getNameByIndex(index) else { return }
        webFormsData[changeName(currentName, with: ":\(second)", index: index)] = currentName
    }

    func assignDelayChange(_ second: Float, index: Int = -1) {
        guard let currentName = getNameByIndex(index) else { return }
        let updatedName = currentName.removeOuter(":", ")")
        webFormsData[changeName(updatedName, with: ":\(second)", index: index)] = updatedName
    }

    func assignInterval(_ second: Float, index: Int = -1) {
        guard let currentName = getNameByIndex(index) else { return }
        webFormsData[changeName(currentName, with: "(\(second)", index: index)] = currentName
    }

    func assignIntervalChange(_ second: Float, index: Int = -1) {
        guard let currentName = getNameByIndex(index) else { return }
        let updatedName = currentName.removeOuter("(", ")")
        webFormsData[changeName(updatedName, with: "(\(second)", index: index)] = updatedName
    }

    // Get
    func getFormsActionData() -> String {
        return webFormsData.map { "\($0.key)=\($0.value)" }.joined(separator: "\n")
    }

    func response() -> String {
        return "[web-forms]\(getFormsActionData())"
    }

    func getFormsActionDataLineBreak() -> String {
        let entries = webFormsData.map { "\($0.key)=\($0.value.replacingOccurrences(of: "\"", with: "$[dq];"))" }
        let lastIndex = entries.count - 1
        return entries.enumerated().map { $0.element + ($0.offset < lastIndex ? "$[sln];" : "") }.joined(separator: "")
    }

    // Export
    func exportToWebFormsTag(src: String? = nil) -> String {
        return "<web-forms ac=\"\(getFormsActionDataLineBreak())\" \(src != nil ? "src=\"\(src!)\"" : "")></web-forms>"
    }

    // Overload
    func exportToWebFormsTag(width: String, height: String, src: String? = nil) -> String {
        return "<web-forms ac=\"\(getFormsActionDataLineBreak())\" width=\"\(width)\" height=\"\(height)\" \(src != nil ? "src=\"\(src!)\"" : "")></web-forms>"
    }

    // Overload
    func exportToWebFormsTag(width: Int, height: Int, src: String? = nil) -> String {
        return exportToWebFormsTag(width: "\(width)px", height: "\(height)px", src: src)
    }
    
    // Helper Methods
    private func getNameByIndex(_ index: Int) -> String? {
        // Implement logic to fetch name by index
        // This method is a placeholder, logic needs to be defined upon full context
        return nil
    }
    
    private func changeName(_ currentName: String, with prefix: String, index: Int) -> String {
        // Implement logic to change name depending on current name and index
        // This method is a placeholder, logic needs to be defined upon full context
        return currentName
    }
}

struct InputPlace {
    static func id(_ id: String) -> String {
        return id
    }
    
    static func name(_ name: String) -> String {
        return "(\(name))"
    }
    
    static func name(_ name: String, index: Int) -> String {
        return "(\(name))\(index)"
    }
    
    static func tag(_ tag: String) -> String {
        return "<\(tag)>"
    }
    
    static func tag(_ tag: String, index: Int) -> String {
        return "<\(tag)>\(index)"
    }
    
    static func className(_ className: String) -> String {
        return "{\(className)}"
    }
    
    static func className(_ className: String, index: Int) -> String {
        return "{\(className)}\(index)"
    }
    
    static func query(_ query: String) -> String {
        return "*\(query.replacingOccurrences(of: "=", with: "$[eq];"))"
    }
    
    static func queryAll(_ query: String) -> String {
        return "[\(query.replacingOccurrences(of: "=", with: "$[eq];"))"
    }
}

extension String {
    func appendPlace(_ value: String) -> String {
        if count < 1 {
            return value
        }
        
        var updatedText = self
        
        if updatedText[updatedText.startIndex] != ">" {
            updatedText = ">" + updatedText
        }
        
        return updatedText + "|" + value
    }
    
    func exportToWebFormsTag() -> String {
        return "<web-forms src=\"\(self)\"></web-forms>"
    }
    
    // Overload
    func exportToWebFormsTag(width: Int, height: Int) -> String {
        return "<web-forms src=\"\(self)\" width=\"\(width)\" height=\"\(height)\"></web-forms>"
    }
    
    func exportActionControlsToWebFormsTag(actionControls: String) -> String {
        return "<web-forms ac=\"\(actionControls)\"></web-forms>"
    }
    
    func removeOuter(startString: String, endString: String) -> String {
        guard let start = self.range(of: startString)?.lowerBound else {
            return self
        }
        
        guard let end = self.range(of: endString, range: start..<self.endIndex)?.upperBound else {
            return self
        }
        
        var result = self
        result.removeSubrange(start..<end)
        return result
    }
}