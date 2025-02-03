// Compatible with WebFormsJS version 1.6

class WebForms {
    constructor() {
        this.webFormsData = new NameValueCollection();
    }

    // Add Methods
    addLine(name, value) {
        this.webFormsData.add(name, value);
    }

    addId(inputPlace, id) {
        this.webFormsData.add(`ai${inputPlace}`, id);
    }

    addName(inputPlace, name) {
        this.webFormsData.add(`an${inputPlace}`, name);
    }

    addValue(inputPlace, value) {
        this.webFormsData.add(`av${inputPlace}`, value);
    }

    addClass(inputPlace, className) {
        this.webFormsData.add(`ac${inputPlace}`, className);
    }

    addStyle(inputPlace, style) {
        this.webFormsData.add(`as${inputPlace}`, style);
    }

    addStyle(inputPlace, name, value) {
        this.webFormsData.add(`as${inputPlace}`, `${name}:${value}`);
    }

    addOptionTag(inputPlace, text, value, selected = false) {
        this.webFormsData.add(`ao${inputPlace}`, `${value}|${text}${selected ? '|1' : ''}`);
    }

    addCheckBoxTag(inputPlace, text, value, checked = false) {
        this.webFormsData.add(`ak${inputPlace}`, `${value}|${text}${checked ? '|1' : ''}`);
    }

    addTitle(inputPlace, title) {
        this.webFormsData.add(`al${inputPlace}`, title);
    }

    addText(inputPlace, text) {
        this.webFormsData.add(`at${inputPlace}`, text.replace(/\n/g, "$[ln];"));
    }

    addTextToUp(inputPlace, text) {
        this.webFormsData.add(`pt${inputPlace}`, text.replace(/\n/g, "$[ln];"));
    }

    addAttribute(inputPlace, attribute, value = "") {
        this.webFormsData.add(`aa${inputPlace}`, `${attribute}|${value}`);
    }

    addTag(inputPlace, tagName, id = "") {
        this.webFormsData.add(`nt${inputPlace}`, tagName + (id ? `|${id}` : ''));
    }

    addTagToUp(inputPlace, tagName, id = "") {
        this.webFormsData.add(`ut${inputPlace}`, tagName + (id ? `|${id}` : ''));
    }

    addTagBefore(inputPlace, tagName, id = "") {
        this.webFormsData.add(`bt${inputPlace}`, tagName + (id ? `|${id}` : ''));
    }

    addTagAfter(inputPlace, tagName, id = "") {
        this.webFormsData.add(`ft${inputPlace}`, tagName + (id ? `|${id}` : ''));
    }

    // Set methods
    setId(inputPlace, id) {
        this.webFormsData.set(`si${inputPlace}`, id);
    }

    setName(inputPlace, name) {
        this.webFormsData.set(`sn${inputPlace}`, name);
    }

    setValue(inputPlace, value) {
        this.webFormsData.set(`sv${inputPlace}`, value);
    }

    setClass(inputPlace, className) {
        this.webFormsData.set(`sc${inputPlace}`, className);
    }

    setStyle(inputPlace, style) {
        this.webFormsData.set(`ss${inputPlace}`, style);
    }

    setStyle(inputPlace, name, value) {
        this.webFormsData.set(`ss${inputPlace}`, `${name}:${value}`);
    }

    setOptionTag(inputPlace, text, value, selected = false) {
        this.webFormsData.set(`so${inputPlace}`, `${value}|${text}${selected ? '|1' : ''}`);
    }

    setChecked(inputPlace, checked = false) {
        this.webFormsData.set(`sk${inputPlace}`, checked ? "1" : "0");
    }

    setCheckBoxTagToList(inputPlace, text, value, checked = false) {
        this.webFormsData.set(`sk${inputPlace}`, `${value}|${text}${checked ? '|1' : ''}`);
    }

    setTitle(inputPlace, title) {
        this.webFormsData.set(`sl${inputPlace}`, title);
    }

    setText(inputPlace, text) {
        this.webFormsData.set(`st${inputPlace}`, text.replace(/\n/g, "$[ln];"));
    }

    setAttribute(inputPlace, attribute, value = "") {
        this.webFormsData.set(`sa${inputPlace}`, `${attribute}${value ? `|${value}` : ''}`);
    }

    setWidth(inputPlace, width) {
        this.webFormsData.set(`sw${inputPlace}`, width);
    }

    setHeight(inputPlace, height) {
        this.webFormsData.set(`sh${inputPlace}`, height);
    }

    // Insert methods
    insertId(inputPlace, id) {
        this.webFormsData.add(`ii${inputPlace}`, id);
    }

    insertName(inputPlace, name) {
        this.webFormsData.add(`in${inputPlace}`, name);
    }

    insertValue(inputPlace, value) {
        this.webFormsData.add(`iv${inputPlace}`, value);
    }

    insertClass(inputPlace, className) {
        this.webFormsData.add(`ic${inputPlace}`, className);
    }

    insertStyle(inputPlace, style) {
        this.webFormsData.add(`is${inputPlace}`, style);
    }

    insertStyle(inputPlace, name, value) {
        this.webFormsData.add(`is${inputPlace}`, `${name}:${value}`);
    }

    insertOptionTag(inputPlace, text, value, selected = false) {
        this.webFormsData.add(`io${inputPlace}`, `${value}|${text}${selected ? '|1' : ''}`);
    }

    insertCheckBoxTag(inputPlace, text, value, checked = false) {
        this.webFormsData.add(`ik${inputPlace}`, `${value}|${text}${checked ? '|1' : ''}`);
    }

    insertTitle(inputPlace, title) {
        this.webFormsData.add(`il${inputPlace}`, title);
    }

    insertText(inputPlace, text) {
        this.webFormsData.add(`it${inputPlace}`, text.replace(/\n/g, "$[ln];"));
    }

    insertAttribute(inputPlace, attribute, value = "") {
        this.webFormsData.add(`ia${inputPlace}`, `${attribute}${value ? `|${value}` : ''}`);
    }

    // Delete methods
    deleteId(inputPlace) {
        this.webFormsData.add(`di${inputPlace}`, "1");
    }

    deleteName(inputPlace) {
        this.webFormsData.add(`dn${inputPlace}`, "1");
    }

    deleteValue(inputPlace) {
        this.webFormsData.add(`dv${inputPlace}`, "1");
    }

    deleteClass(inputPlace, className) {
        this.webFormsData.add(`dc${inputPlace}`, className);
    }

    deleteStyle(inputPlace, styleName) {
        this.webFormsData.add(`ds${inputPlace}`, styleName);
    }

    deleteOptionTag(inputPlace, value) {
        this.webFormsData.add(`do${inputPlace}`, value);
    }

    deleteAllOptionTag(inputPlace) {
        this.webFormsData.add(`do${inputPlace}`, "*");
    }

    deleteCheckBoxTag(inputPlace, value) {
        this.webFormsData.add(`dk${inputPlace}`, value);
    }

    deleteAllCheckBoxTag(inputPlace) {
        this.webFormsData.add(`dk${inputPlace}`, "*");
    }

    deleteTitle(inputPlace) {
        this.webFormsData.add(`dl${inputPlace}`, "1");
    }

    deleteText(inputPlace) {
        this.webFormsData.add(`dt${inputPlace}`, "1");
    }

    deleteAttribute(inputPlace, attribute) {
        this.webFormsData.add(`da${inputPlace}`, attribute);
    }

    delete(inputPlace) {
        this.webFormsData.add(`de${inputPlace}`, "1");
    }

    deleteParent(inputPlace) {
        this.webFormsData.add(`dp${inputPlace}`, "1");
    }

    // Other Methods
    setBackgroundColor(inputPlace, color) {
        this.webFormsData.add(`bc${inputPlace}`, color);
    }

    setTextColor(inputPlace, color) {
        this.webFormsData.add(`tc${inputPlace}`, color);
    }

    setFontName(inputPlace, name) {
        this.webFormsData.add(`fn${inputPlace}`, name);
    }

    setFontSize(inputPlace, size) {
        this.webFormsData.add(`fs${inputPlace}`, size);
    }

    setFontSize(inputPlace, size) {
        this.webFormsData.add(`fs${inputPlace}`, `${size}px`);
    }

    setFontBold(inputPlace, bold) {
        this.webFormsData.add(`fb${inputPlace}`, bold ? "1" : "0");
    }

    setVisible(inputPlace, visible) {
        this.webFormsData.add(`vi${inputPlace}`, visible ? "1" : "0");
    }

    setTextAlign(inputPlace, align) {
        this.webFormsData.add(`ta${inputPlace}`, align);
    }

    setReadOnly(inputPlace, readOnly) {
        this.webFormsData.add(`sr${inputPlace}`, readOnly ? "1" : "0");
    }

    setDisabled(inputPlace, disabled) {
        this.webFormsData.add(`sd${inputPlace}`, disabled ? "1" : "0");
    }

    setFocus(inputPlace, focus) {
        this.webFormsData.add(`sf${inputPlace}`, focus ? "1" : "0");
    }

    setMinLength(inputPlace, length) {
        this.webFormsData.add(`mn${inputPlace}`, String(length));
    }

    setMaxLength(inputPlace, length) {
        this.webFormsData.add(`mx${inputPlace}`, String(length));
    }

    setSelectedValue(inputPlace, value) {
        this.webFormsData.add(`ts${inputPlace}`, value);
    }

    setSelectedIndex(inputPlace, index) {
        this.webFormsData.add(`ti${inputPlace}`, String(index));
    }

    setCheckedValue(inputPlace, value, selected) {
        this.webFormsData.add(`ks${inputPlace}`, `${value}|${selected ? "1" : "0"}`);
    }

    setCheckedIndex(inputPlace, index, selected) {
        this.webFormsData.add(`ki${inputPlace}`, `${index}|${selected ? "1" : "0"}`);
    }

    callScript(scriptText) {
        this.webFormsData.add('_', scriptText.replace(/\n/g, "$[ln];"));
    }

    loadUrl(inputPlace, url) {
        this.webFormsData.add(`lu${inputPlace}`, url);
    }

    changeUrl(url) {
        this.webFormsData.add('cu', url);
    }

    removeSessionCache(cacheKey) {
        this.webFormsData.add('rs', cacheKey);
    }

    removeAllSessionCache() {
        this.webFormsData.add('rs', "*");
    }

    removeCache(cacheKey) {
        this.webFormsData.add('rd', cacheKey);
    }

    removeAllCache() {
        this.webFormsData.add('rd', "*");
    }

    setSessionCache() {
        this.webFormsData.add('cs', "1");
    }

    setCache(second) {
        this.webFormsData.add('cd', String(second));
    }

    setCache() {
        this.webFormsData.add('cd', "*");
    }

    // Increase and Decrease methods
    increaseMinLength(inputPlace, value) {
        this.webFormsData.add(`+n${inputPlace}`, String(value));
    }

    increaseMaxLength(inputPlace, value) {
        this.webFormsData.add(`+x${inputPlace}`, String(value));
    }

    increaseFontSize(inputPlace, value) {
        this.webFormsData.add(`+f${inputPlace}`, String(value));
    }

    increaseWidth(inputPlace, value) {
        this.webFormsData.add(`+w${inputPlace}`, String(value));
    }

    increaseHeight(inputPlace, value) {
        this.webFormsData.add(`+h${inputPlace}`, String(value));
    }

    increaseValue(inputPlace, value) {
        this.webFormsData.add(`+v${inputPlace}`, String(value));
    }

    decreaseMinLength(inputPlace, value) {
        this.webFormsData.add(`-n${inputPlace}`, String(value));
    }

    decreaseMaxLength(inputPlace, value) {
        this.webFormsData.add(`-x${inputPlace}`, String(value));
    }

    decreaseFontSize(inputPlace, value) {
        this.webFormsData.add(`-f${inputPlace}`, String(value));
    }

    decreaseWidth(inputPlace, value) {
        this.webFormsData.add(`-w${inputPlace}`, String(value));
    }

    decreaseHeight(inputPlace, value) {
        this.webFormsData.add(`-h${inputPlace}`, String(value));
    }

    decreaseValue(inputPlace, value) {
        this.webFormsData.add(`-v${inputPlace}`, String(value));
    }

    // Event methods
    setPostEvent(inputPlace, htmlEvent) {
        this.webFormsData.add(`Ep${inputPlace}`, htmlEvent);
    }

    setPostEventAdding(inputPlace, htmlEvent) {
        this.webFormsData.add(`Ep${inputPlace}`, `${htmlEvent}|+`);
    }

    setPostEventTo(inputPlace, htmlEvent, outputPlace) {
        this.webFormsData.add(`Ep${inputPlace}`, `${htmlEvent}|${outputPlace}`);
    }

    setPostEventListener(inputPlace, htmlEventListener) {
        this.webFormsData.add(`EP${inputPlace}`, htmlEventListener);
    }

    setPostEventListenerAdding(inputPlace, htmlEventListener) {
        this.webFormsData.add(`EP${inputPlace}`, `${htmlEventListener}|+`);
    }

    setPostEventListenerTo(inputPlace, htmlEventListener, outputPlace) {
        this.webFormsData.add(`EP${inputPlace}`, `${htmlEventListener}|${outputPlace}`);
    }

    setGetEvent(inputPlace, htmlEvent, path = null) {
        this.webFormsData.add(`Eg${inputPlace}`, `${htmlEvent}|${path ? path : "#"}`);
    }

    setGetEvent(inputPlace, htmlEvent, outputPlace, path = null) {
        this.webFormsData.add(`Eg${inputPlace}`, `${htmlEvent}|${path ? path : "#"}|${outputPlace}`);
    }

    setGetEventInForm(inputPlace, htmlEvent) {
        this.webFormsData.add(`Eg${inputPlace}`, htmlEvent);
    }

    setGetEventInForm(inputPlace, htmlEvent, outputPlace) {
        this.webFormsData.add(`Eg${inputPlace}`, `${htmlEvent}|${outputPlace}`);
    }

    setGetEventListener(inputPlace, htmlEventListener, path = null) {
        this.webFormsData.add(`EG${inputPlace}`, `${htmlEventListener}|${path ? path : "#"}`);
    }

    setGetEventListener(inputPlace, htmlEventListener, outputPlace, path = null) {
        this.webFormsData.add(`EG${inputPlace}`, `${htmlEventListener}|${path ? path : "#"}|${outputPlace}`);
    }

    setGetEventInFormListener(inputPlace, htmlEventListener) {
        this.webFormsData.add(`EG${inputPlace}`, htmlEventListener);
    }

    setGetEventInFormListener(inputPlace, htmlEventListener, outputPlace) {
        this.webFormsData.add(`EG${inputPlace}`, `${htmlEventListener}|${outputPlace}`);
    }

    setTagEvent(inputPlace, htmlEvent, outputPlace) {
        this.webFormsData.add(`Et${inputPlace}`, `${htmlEvent}|${outputPlace}`);
    }

    setTagEventListener(inputPlace, htmlEvent, outputPlace) {
        this.webFormsData.add(`ET${inputPlace}`, `${htmlEvent}|${outputPlace}`);
    }

    removePostEvent(inputPlace, htmlEvent) {
        this.webFormsData.add(`Rp${inputPlace}`, htmlEvent);
    }

    removeGetEvent(inputPlace, htmlEvent) {
        this.webFormsData.add(`Rg${inputPlace}`, htmlEvent);
    }

    removeTagEvent(inputPlace, htmlEvent) {
        this.webFormsData.add(`Rt${inputPlace}`, htmlEvent);
    }

    removePostEventListener(inputPlace, htmlEventListener) {
        this.webFormsData.add(`RP${inputPlace}`, htmlEventListener);
    }

    removeGetEventListener(inputPlace, htmlEventListener) {
        this.webFormsData.add(`RG${inputPlace}`, htmlEventListener);
    }

    removeTagEventListener(inputPlace, htmlEventListener) {
        this.webFormsData.add(`RT${inputPlace}`, htmlEventListener);
    }

    // Save methods
    saveId(inputPlace, key = ".") {
        this.webFormsData.add(`@gi${inputPlace}`, key);
    }

    saveName(inputPlace, key = ".") {
        this.webFormsData.add(`@gn${inputPlace}`, key);
    }

    saveValue(inputPlace, key = ".") {
        this.webFormsData.add(`@gv${inputPlace}`, key);
    }

    saveValueLength(inputPlace, key = ".") {
        this.webFormsData.add(`@ge${inputPlace}`, key);
    }

    saveClass(inputPlace, key = ".") {
        this.webFormsData.add(`@gc${inputPlace}`, key);
    }

    saveStyle(inputPlace, key = ".") {
        this.webFormsData.add(`@gs${inputPlace}`, key);
    }

    saveTitle(inputPlace, key = ".") {
        this.webFormsData.add(`@gl${inputPlace}`, key);
    }

    saveText(inputPlace, key = ".") {
        this.webFormsData.add(`@gt${inputPlace}`, key);
    }

    saveTextLength(inputPlace, key = ".") {
        this.webFormsData.add(`@gg${inputPlace}`, key);
    }

    saveAttribute(inputPlace, attribute, key = ".") {
        this.webFormsData.add(`@ga${inputPlace}`, `${key}|${attribute}`);
    }

    saveWidth(inputPlace, key = ".") {
        this.webFormsData.add(`@gw${inputPlace}`, key);
    }

    saveHeight(inputPlace, key = ".") {
        this.webFormsData.add(`@gh${inputPlace}`, key);
    }

    saveReadOnly(inputPlace, key = ".") {
        this.webFormsData.add(`@gr${inputPlace}`, key);
    }

    saveSelectedIndex(inputPlace, key = ".") {
        this.webFormsData.add(`@gx${inputPlace}`, key);
    }

    saveTextAlign(inputPlace, key = ".") {
        this.webFormsData.add(`@ta${inputPlace}`, key);
    }

    saveNodeLength(inputPlace, key = ".") {
        this.webFormsData.add(`@nl${inputPlace}`, key);
    }

    saveVisible(inputPlace, key = ".") {
        this.webFormsData.add(`@vi${inputPlace}`, key);
    }

    // Pre Runner methods
    assignDelay(second, index = -1) {
        const currentName = this.webFormsData.getNameByIndex(index);
        if (!currentName) return;

        this.webFormsData.changeNameByIndex(index, `:${second})${currentName}`);
    }

    assignDelayChange(second, index = -1) {
        const currentName = this.webFormsData.getNameByIndex(index);
        if (!currentName) return;

        const newName = currentName.replace(/^:.*?\)/, `:${second})`);
        this.webFormsData.changeNameByIndex(index, newName);
    }

    assignInterval(second, index = -1) {
        const currentName = this.webFormsData.getNameByIndex(index);
        if (!currentName) return;

        this.webFormsData.changeNameByIndex(index, `(${second})${currentName}`);
    }

    assignIntervalChange(second, index = -1) {
        const currentName = this.webFormsData.getNameByIndex(index);
        if (!currentName) return;

        const newName = currentName.replace(/^\(.*?\)/, `(${second})`);
        this.webFormsData.changeNameByIndex(index, newName);
    }

    // Index methods
    startIndex(name = "") {
        this.webFormsData.add('#', name);
    }

    // Get methods
    getFormsActionData() {
        let returnValue = "";
        const dataList = this.webFormsData.getList();
        for (const item of dataList) {
            returnValue += `\n${item.name}=${item.value}`;
        }
        return returnValue;
    }

    response() {
        return `[web-forms]${this.getFormsActionData()}`;
    }

    getFormsActionDataLineBreak() {
        let returnValue = "";
        const dataList = this.webFormsData.getList();
        let i = dataList.length;

        for (const item of dataList) {
            returnValue += `${item.name}=${item.value.replace(/"/g, "$[dq];")}${(i-- > 1) ? "$[sln];" : ""}`;
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

    doneToWebFormsTag(id = null) {
        return `<web-forms ac="${this.getFormsActionDataLineBreak()}"${id ? ` id="${id}" done="true"` : ''}></web-forms>`;
    }

    exportToNameValue() {
        return this.webFormsData.getList();
    }

    appendForm(form) {
        const formData = form.exportToNameValue();
        for (const item of formData) {
            this.webFormsData.add(item.name, item.value);
        }
    }

    setHeaders(context) {
        context.setHeader("Content-Type", "text/plain");
    }

    clean() {
        this.webFormsData.empty();
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

class OutputPlace extends InputPlace {}

class Fetch {
    static random(maxValue) {
        return `@mr${maxValue}`;
    }

    static random(minValue, maxValue) {
        return `@mr${maxValue},${minValue}`;
    }

    static dateYear = "@dy";
    static dateMonth = "@dm";
    static dateDay = "@dd";
    static dateHours = "@dh";
    static dateMinutes = "@di";
    static dateSeconds = "@ds";
    static dateMilliseconds = "@dl";

    static cookie(key) {
        return `@co${key}`;
    }

    static session(key) {
        return `@cs${key}`;
    }

    static session(key, replaceValue) {
        return `@cs${key},${replaceValue}`;
    }

    static sessionAndRemove(key) {
        return `@cl${key}`;
    }

    static sessionAndRemove(key, replaceValue) {
        return `@cl${key},${replaceValue}`;
    }

    static saved(key = ".") {
        return `@cl${key}`;
    }

    static cache(key) {
        return `@cd${key}`;
    }

    static cache(key, replaceValue) {
        return `@cd${key},${replaceValue}`;
    }

    static cacheAndRemove(key) {
        return `@ct${key}`;
    }

    static cacheAndRemove(key, replaceValue) {
        return `@ct${key},${replaceValue}`;
    }

    static script(scriptText) {
        return `@_${scriptText.replace(/\n/g, "$[ln];")}`;
    }
}

class HtmlEvent {
    static onAbort = "onabort";
    static onAfterPrint = "onafterprint";
    static onBeforePrint = "onbeforeprint";
    static onBeforeUnload = "onbeforeunload";
    static onBlur = "onblur";
    static onCanPlay = "oncanplay";
    static onCanPlayThrough = "oncanplaythrough";
    static onChange = "onchange";
    static onClick = "onclick";
    static onCopy = "oncopy";
    static onCut = "oncut";
    static onDoubleClick = "ondblclick";
    static onDrag = "ondrag";
    static onDragEnd = "ondragend";
    static onDragEnter = "ondragenter";
    static onDragLeave = "ondragleave";
    static onDragOver = "ondragover";
    static onDragStart = "ondragstart";
    static onDrop = "ondrop";
    static onDurationChange = "ondurationchange";
    static onEnded = "onended";
    static onError = "onerror";
    static onFocus = "onfocus";
    static onFocusin = "onfocusin";
    static onFocusOut = "onfocusout";
    static onHashChange = "onhashchange";
    static onInput = "oninput";
    static onInvalid = "oninvalid";
    static onKeyDown = "onkeydown";
    static onKeyPress = "onkeypress";
    static onKeyUp = "onkeyup";
    static onLoad = "onload";
    static onLoadedData = "onloadeddata";
    static onLoadedMetaData = "onloadedmetadata";
    static onLoadStart = "onloadstart";
    static onMouseDown = "onmousedown";
    static onMouseEnter = "onmouseenter";
    static onMouseLeave = "onmouseleave";
    static onMouseMove = "onmousemove";
    static onMouseOver = "onmouseover";
    static onMouseOut = "onmouseout";
    static onMouseUp = "onmouseup";
    static onOffline = "onoffline";
    static onOnline = "ononline";
    static onPageHide = "onpagehide";
    static onPageShow = "onpageshow";
    static onPaste = "onpaste";
    static onPause = "onpause";
    static onPlay = "onplay";
    static onPlaying = "onplaying";
    static onProgress = "onprogress";
    static onRateChange = "onratechange";
    static onResize = "onresize";
    static onReset = "onreset";
    static onScroll = "onscroll";
    static onSearch = "onsearch";
    static onSeeked = "onseeked";
    static onSeeking = "onseeking";
    static onSelect = "onselect";
    static onStalled = "onstalled";
    static onSubmit = "onsubmit";
    static onSuspend = "onsuspend";
    static onTimeUpdate = "ontimeupdate";
    static onToggle = "ontoggle";
    static onTouchCancel = "ontouchcancel";
    static onTouchend = "ontouchend";
    static onTouchMove = "ontouchmove";
    static onTouchStart = "ontouchstart";
    static onUnload = "onunload";
    static onVolumeChange = "onvolumechange";
    static onWaiting = "onwaiting";
}

class HtmlEventListener {
    static abort = "abort";
    static afterPrint = "afterprint";
    static beforePrint = "beforeprint";
    static beforeUnload = "beforeunload";
    static blur = "blur";
    static canPlay = "canplay";
    static canPlayThrough = "canplaythrough";
    static change = "change";
    static click = "click";
    static copy = "copy";
    static cut = "cut";
    static doubleClick = "dblclick";
    static drag = "drag";
    static dragEnd = "dragend";
    static dragEnter = "dragenter";
    static dragLeave = "dragleave";
    static dragOver = "dragover";
    static dragStart = "dragstart";
    static drop = "drop";
    static durationChange = "durationchange";
    static ended = "ended";
    static error = "error";
    static focus = "focus";
    static focusin = "focusin";
    static focusOut = "focusout";
    static hashChange = "hashchange";
    static input = "input";
    static invalid = "invalid";
    static keyDown = "keydown";
    static keyPress = "keypress";
    static keyUp = "keyup";
    static load = "load";
    static loadedData = "loadeddata";
    static loadedMetaData = "loadedmetadata";
    static loadStart = "loadstart";
    static mouseDown = "mousedown";
    static mouseEnter = "mouseenter";
    static mouseLeave = "mouseleave";
    static mouseMove = "mousemove";
    static mouseOver = "mouseover";
    static mouseOut = "mouseout";
    static mouseUp = "mouseup";
    static offline = "offline";
    static online = "online";
    static pageHide = "pagehide";
    static pageShow = "pageshow";
    static paste = "paste";
    static pause = "pause";
    static play = "play";
    static playing = "playing";
    static progress = "progress";
    static rateChange = "ratechange";
    static resize = "resize";
    static reset = "reset";
    static scroll = "scroll";
    static search = "search";
    static seeked = "seeked";
    static seeking = "seeking";
    static select = "select";
    static stalled = "stalled";
    static submit = "submit";
    static suspend = "suspend";
    static timeUpdate = "timeupdate";
    static toggle = "toggle";
    static touchCancel = "touchcancel";
    static touchend = "touchend";
    static touchMove = "touchmove";
    static touchStart = "touchstart";
    static unload = "unload";
    static volumeChange = "volumechange";
    static waiting = "waiting";

    static animationEnd = "animationend";
    static animationIteration = "animationiteration";
    static animationStart = "animationstart";
    static contextMenu = "contextmenu";
    static fullScreenChange = "fullscreenchange";
    static fullScreenError = "fullscreenerror";
    static popState = "popstate";
    static transitionEnd = "transitionend";
    static storage = "storage";
    static wheel = "wheel";
}

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

class NameValueCollection {
    constructor() {
        this.data = [];
    }

    add(name, value) {
        this.data.push({ name, value });
    }

    set(name, value) {
        const index = this.data.findIndex(item => item.name === name);
        if (index !== -1) {
            this.data[index].value = value;
        } else {
            this.add(name, value);
        }
    }

    delete(name) {
        this.data = this.data.filter(item => item.name !== name);
    }

    deleteByIndex(index) {
        if (index >= 0 && index < this.data.length) {
            this.data.splice(index, 1);
        }
    }

    getValue(name) {
        const item = this.data.find(item => item.name === name);
        return item ? item.value : null;
    }

    getValueByIndex(index) {
        if (index >= 0 && index < this.data.length) {
            return this.data[index].value;
        }
        return null;
    }

    getNameByIndex(index) {
        if (index >= 0 && index < this.data.length) {
            return this.data[index].name;
        }
        return null;
    }

    getList() {
        return this.data;
    }

    changeNameByIndex(index, newName) {
        if (index >= 0 && index < this.data.length) {
            this.data[index].name = newName;
        }
    }

    changeValueByIndex(index, newValue) {
        if (index >= 0 && index < this.data.length) {
            this.data[index].value = newValue;
        }
    }

    changeNameValueByIndex(index, newName, newValue) {
        if (index >= 0 && index < this.data.length) {
            this.data[index].name = newName;
            this.data[index].value = newValue;
        }
    }

    empty() {
        this.data = [];
    }

    exist(name) {
        return this.data.some(item => item.name === name);
    }
}

module.exports = {
    WebForms,
    InputPlace,
    OutputPlace,
    Fetch,
    HtmlEvent,
    HtmlEventListener,
    ExtensionWebFormsMethods
};
