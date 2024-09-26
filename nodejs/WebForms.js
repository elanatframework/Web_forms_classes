class WebForms {
    constructor() {
        this.webFormsData = {};
    }

    // Add Methods
    addId(inputPlace, id) {
        this.webFormsData[`ai${inputPlace}`] = id;
    }

    addName(inputPlace, name) {
        this.webFormsData[`an${inputPlace}`] = name;
    }

    addValue(inputPlace, value) {
        this.webFormsData[`av${inputPlace}`] = value;
    }

    addClass(inputPlace, className) {
        this.webFormsData[`ac${inputPlace}`] = className;
    }

    addStyle(inputPlace, style) {
        this.webFormsData[`as${inputPlace}`] = style;
    }

    addOptionTag(inputPlace, text, value, selected = false) {
        this.webFormsData[`ao${inputPlace}`] = `${value}|${text}${selected ? '|1' : ''}`;
    }

    addCheckBoxTag(inputPlace, text, value, checked = false) {
        this.webFormsData[`ak${inputPlace}`] = `${value}|${text}${checked ? '|1' : ''}`;
    }

    addTitle(inputPlace, title) {
        this.webFormsData[`al${inputPlace}`] = title;
    }

    addText(inputPlace, text) {
        this.webFormsData[`at${inputPlace}`] = text.replace(/\n/g, "$[ln];");
    }

    addAttribute(inputPlace, attribute, value = "") {
        this.webFormsData[`aa${inputPlace}`] = `${attribute}|${value}`;
    }

    addTag(inputPlace, tagName, id = "") {
        this.webFormsData[`nt${inputPlace}`] = tagName + (id ? `|${id}` : '');
    }

    // Set methods
    setId(inputPlace, id) {
        this.webFormsData[`si${inputPlace}`] = id;
    }

    setName(inputPlace, name) {
        this.webFormsData[`sn${inputPlace}`] = name;
    }

    setValue(inputPlace, value) {
        this.webFormsData[`sv${inputPlace}`] = value;
    }

    setClass(inputPlace, className) {
        this.webFormsData[`sc${inputPlace}`] = className;
    }

    setStyle(inputPlace, style) {
        this.webFormsData[`ss${inputPlace}`] = style;
    }

    setOptionTag(inputPlace, text, value, selected = false) {
        this.webFormsData[`so${inputPlace}`] = `${value}|${text}${selected ? '|1' : ''}`;
    }

    setChecked(inputPlace, checked = false) {
        this.webFormsData[`sk${inputPlace}`] = checked ? "1" : "0";
    }

    setCheckBoxTagToList(inputPlace, text, value, checked = false) {
        this.webFormsData[`sk${inputPlace}`] = `${value}|${text}${checked ? '|1' : ''}`;
    }

    setTitle(inputPlace, title) {
        this.webFormsData[`sl${inputPlace}`] = title;
    }

    setText(inputPlace, text) {
        this.webFormsData[`st${inputPlace}`] = text.replace(/\n/g, "$[ln];");
    }

    setAttribute(inputPlace, attribute, value = "") {
        this.webFormsData[`sa${inputPlace}`] = `${attribute}${value ? `|${value}` : ''}`;
    }

    setWidth(inputPlace, width) {
        this.webFormsData[`sw${inputPlace}`] = width;
    }

    setHeight(inputPlace, height) {
        this.webFormsData[`sh${inputPlace}`] = height;
    }

    insertId(inputPlace, id) {
        this.webFormsData[`ii${inputPlace}`] = id;
    }

    insertName(inputPlace, name) {
        this.webFormsData[`in${inputPlace}`] = name;
    }

    insertValue(inputPlace, value) {
        this.webFormsData[`iv${inputPlace}`] = value;
    }

    insertClass(inputPlace, className) {
        this.webFormsData[`ic${inputPlace}`] = className;
    }

    insertStyle(inputPlace, style) {
        this.webFormsData[`is${inputPlace}`] = style;
    }

    insertOptionTag(inputPlace, text, value, selected = false) {
        this.webFormsData[`io${inputPlace}`] = `${value}|${text}${selected ? '|1' : ''}`;
    }

    insertCheckBoxTag(inputPlace, text, value, checked = false) {
        this.webFormsData[`ik${inputPlace}`] = `${value}|${text}${checked ? '|1' : ''}`;
    }

    insertTitle(inputPlace, title) {
        this.webFormsData[`il${inputPlace}`] = title;
    }

    insertText(inputPlace, text) {
        this.webFormsData[`it${inputPlace}`] = text.replace(/\n/g, "$[ln];");
    }

    insertAttribute(inputPlace, attribute, value = "") {
        this.webFormsData[`ia${inputPlace}`] = `${attribute}${value ? `|${value}` : ''}`;
    }

    // Delete methods
    deleteId(inputPlace) {
        this.webFormsData[`di${inputPlace}`] = "1";
    }

    deleteName(inputPlace) {
        this.webFormsData[`dn${inputPlace}`] = "1";
    }

    deleteValue(inputPlace) {
        this.webFormsData[`dv${inputPlace}`] = "1";
    }

    deleteClass(inputPlace, className) {
        this.webFormsData[`dc${inputPlace}`] = className;
    }

    deleteStyle(inputPlace, styleName) {
        this.webFormsData[`ds${inputPlace}`] = styleName;
    }

    deleteOptionTag(inputPlace, value) {
        this.webFormsData[`do${inputPlace}`] = value;
    }

    deleteCheckBoxTag(inputPlace, value) {
        this.webFormsData[`dk${inputPlace}`] = value;
    }

    deleteTitle(inputPlace) {
        this.webFormsData[`dl${inputPlace}`] = "1";
    }

    deleteText(inputPlace) {
        this.webFormsData[`dt${inputPlace}`] = "1";
    }

    deleteAttribute(inputPlace, attribute) {
        this.webFormsData[`da${inputPlace}`] = attribute;
    }

    delete(inputPlace) {
        this.webFormsData[`de${inputPlace}`] = "1";
    }

    // Other Methods
    setBackgroundColor(inputPlace, color) {
        this.webFormsData[`bc${inputPlace}`] = color;
    }

    setTextColor(inputPlace, color) {
        this.webFormsData[`tc${inputPlace}`] = color;
    }

    setFontName(inputPlace, name) {
        this.webFormsData[`fn${inputPlace}`] = name;
    }

    setFontSize(inputPlace, size) {
        this.webFormsData[`fs${inputPlace}`] = size;
    }

    setFontBold(inputPlace, bold) {
        this.webFormsData[`fb${inputPlace}`] = bold ? "1" : "0";
    }

    setVisible(inputPlace, visible) {
        this.webFormsData[`vi${inputPlace}`] = visible ? "1" : "0";
    }

    setTextAlign(inputPlace, align) {
        this.webFormsData[`ta${inputPlace}`] = align;
    }

    setReadOnly(inputPlace, readOnly) {
        this.webFormsData[`sr${inputPlace}`] = readOnly ? "1" : "0";
    }

    setDisabled(inputPlace, disabled) {
        this.webFormsData[`sd${inputPlace}`] = disabled ? "1" : "0";
    }

    setMinLength(inputPlace, length) {
        this.webFormsData[`mn${inputPlace}`] = String(length);
    }

    setMaxLength(inputPlace, length) {
        this.webFormsData[`mx${inputPlace}`] = String(length);
    }

    setSelectedValue(inputPlace, value) {
        this.webFormsData[`ts${inputPlace}`] = value;
    }

    setSelectedIndex(inputPlace, index) {
        this.webFormsData[`ti${inputPlace}`] = String(index);
    }

    callScript(scriptText) {
        this.webFormsData['_'] = scriptText.replace(/\n/g, "$[ln];");
    }

    loadUrl(inputPlace, url) {
        this.webFormsData[`lu${inputPlace}`] = url;
    }

    // Increase and Decrease methods
    increaseMinLength(inputPlace, value) {
        this.webFormsData[`+n${inputPlace}`] = String(value);
    }

    increaseMaxLength(inputPlace, value) {
        this.webFormsData[`+x${inputPlace}`] = String(value);
    }

    increaseFontSize(inputPlace, value) {
        this.webFormsData[`+f${inputPlace}`] = String(value);
    }

    increaseWidth(inputPlace, value) {
        this.webFormsData[`+w${inputPlace}`] = String(value);
    }

    increaseHeight(inputPlace, value) {
        this.webFormsData[`+h${inputPlace}`] = String(value);
    }

    increaseValue(inputPlace, value) {
        this.webFormsData[`+v${inputPlace}`] = String(value);
    }

    decreaseMinLength(inputPlace, value) {
        this.webFormsData[`-n${inputPlace}`] = String(value);
    }

    decreaseMaxLength(inputPlace, value) {
        this.webFormsData[`-x${inputPlace}`] = String(value);
    }

    decreaseFontSize(inputPlace, value) {
        this.webFormsData[`-f${inputPlace}`] = String(value);
    }

    decreaseWidth(inputPlace, value) {
        this.webFormsData[`-w${inputPlace}`] = String(value);
    }

    decreaseHeight(inputPlace, value) {
        this.webFormsData[`-h${inputPlace}`] = String(value);
    }

    decreaseValue(inputPlace, value) {
        this.webFormsData[`-v${inputPlace}`] = String(value);
    }

    // Get methods
    getFormsActionData() {
        let returnValue = "";
        for (const name in this.webFormsData) {
            returnValue += `\n${name}=${this.webFormsData[name]}`;
        }
        return returnValue;
    }

    response() {
        return `[web-forms]${this.getFormsActionData()}`;
    }

    getFormsActionDataLineBreak() {
        let returnValue = "";
        const webFormsDataList = this.webFormsData;
        let i = Object.keys(webFormsDataList).length;

        for (const name in webFormsDataList) {
            returnValue += `${name}=${webFormsDataList[name].replace(/"/g, "$[dq];")}${(i-- > 1) ? "$[sln];" : ""}`;
        }

        return returnValue;
    }

    // Export methods
    exportToWebFormsTag(src = null) {
        return `<web-forms ac="${this.getFormsActionDataLineBreak()}"${src ? ` src="${src}"` : ''}></web-forms>`;
    }

    exportToWebFormsTagWithDimensions(width, height, src = null) {
        return `<web-forms ac="${this.getFormsActionDataLineBreak()}" width="${width}" height="${height}"${src ? ` src="${src}"` : ''}></web-forms>`;
    }

    exportToWebFormsTagWithDimensionsInt(width, height, src = null) {
        return this.exportToWebFormsTagWithDimensions(`${width}px`, `${height}px`, src);
    }
}

class InputPlace {
    static id(id) {
        return id;
    }

    static name(name) {
        return `(${name})`;
    }

    static nameWithIndex(name, index) {
        return `(${name})${index}`;
    }

    static tag(tag) {
        return `<${tag}>`;
    }

    static tagWithIndex(tag, index) {
        return `<${tag}>${index}`;
    }

    static mediaClass(className) {
        return `{${className}}`;
    }

    static mediaClassWithIndex(className, index) {
        return `{${className}}${index}`;
    }

    static query(query) {
        return `*${query.replace(/=/g, "$[eq];")}`;
    }

    static queryAll(query) {
        return `[${query.replace(/=/g, "$[eq];")}`;
    }
}

// Extension methods
class ExtensionWebFormsMethods {
    static appendPlace(text, value) {
        if (text.length < 1) {
            return value;
        }

        if (text[0] !== '>') {
            text = '>' + text;
        }

        return `${text}|${value}`;
    }

    static exportToWebFormsTag(src) {
        return `<web-forms src="${src}"></web-forms>`;
    }

    static exportToWebFormsTagWithDimensions(src, width, height) {
        return `<web-forms src="${src}" width="${width}" height="${height}"></web-forms>`;
    }

    static exportActionControlsToWebFormsTag(actionControls) {
        return `<web-forms ac="${actionControls}"></web-forms>`;
    }

    static removeOuter(text, startString, endString) {
        const start = text.indexOf(startString);
        if (start === -1) return text;

        const end = text.indexOf(endString, start);
        if (end === -1) return text;

        const lengthToRemove = (end - start) + endString.length;

        return text.slice(0, start) + text.slice(end + endString.length);
    }
}

module.exports = {
    WebForms,
    InputPlace,
    ExtensionWebFormsMethods
};