import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WebForms {

    private Map<String, String> webFormsData = new HashMap<>();

    // Add
    public void addId(String inputPlace, String id) {
        webFormsData.put("ai" + inputPlace, id);
    }

    public void addName(String inputPlace, String name) {
        webFormsData.put("an" + inputPlace, name);
    }

    public void addValue(String inputPlace, String value) {
        webFormsData.put("av" + inputPlace, value);
    }

    public void addClass(String inputPlace, String className) {
        webFormsData.put("ac" + inputPlace, className);
    }

    public void addStyle(String inputPlace, String style) {
        webFormsData.put("as" + inputPlace, style);
    }

    public void addOptionTag(String inputPlace, String text, String value, boolean selected) {
        webFormsData.put("ao" + inputPlace, value + '|' + text + (selected ? "|1" : ""));
    }

    public void addCheckBoxTag(String inputPlace, String text, String value, boolean checked) {
        webFormsData.put("ak" + inputPlace, value + '|' + text + (checked ? "|1" : ""));
    }

    public void addTitle(String inputPlace, String title) {
        webFormsData.put("al" + inputPlace, title);
    }

    public void addText(String inputPlace, String text) {
        webFormsData.put("at" + inputPlace, text.replace("\n", "$[ln];"));
    }

    public void addAttribute(String inputPlace, String attribute, String value) {
        webFormsData.put("aa" + inputPlace, attribute + '|' + value);
    }

    public void addTag(String inputPlace, String tagName, String id) {
        webFormsData.put("nt" + inputPlace, tagName + (!id.isEmpty() ? '|' + id : ""));
    }

    // Set
    public void setId(String inputPlace, String id) {
        webFormsData.put("si" + inputPlace, id);
    }

    public void setName(String inputPlace, String name) {
        webFormsData.put("sn" + inputPlace, name);
    }

    public void setValue(String inputPlace, String value) {
        webFormsData.put("sv" + inputPlace, value);
    }

    public void setClass(String inputPlace, String className) {
        webFormsData.put("sc" + inputPlace, className);
    }

    public void setStyle(String inputPlace, String style) {
        webFormsData.put("ss" + inputPlace, style);
    }

    public void setOptionTag(String inputPlace, String text, String value, boolean selected) {
        webFormsData.put("so" + inputPlace, value + '|' + text + (selected ? "|1" : ""));
    }

    public void setChecked(String inputPlace, boolean checked) {
        webFormsData.put("sk" + inputPlace, checked ? "1" : "0");
    }

    public void setCheckBoxTagToList(String inputPlace, String text, String value, boolean checked) {
        webFormsData.put("sk" + inputPlace, value + '|' + text + (checked ? "|1" : ""));
    }

    public void setTitle(String inputPlace, String title) {
        webFormsData.put("sl" + inputPlace, title);
    }

    public void setText(String inputPlace, String text) {
        webFormsData.put("st" + inputPlace, text.replace("\n", "$[ln];"));
    }

    public void setAttribute(String inputPlace, String attribute, String value) {
        webFormsData.put("sa" + inputPlace, attribute + (!value.isEmpty() ? '|' + value : ""));
    }

    public void setWidth(String inputPlace, String width) {
        webFormsData.put("sw" + inputPlace, width);
    }

    public void setWidth(String inputPlace, int width) {
        setWidth(inputPlace, width + "px");
    }

    public void setHeight(String inputPlace, String height) {
        webFormsData.put("sh" + inputPlace, height);
    }

    public void setHeight(String inputPlace, int height) {
        setHeight(inputPlace, height + "px");
    }

    // Insert
    public void insertId(String inputPlace, String id) {
        webFormsData.put("ii" + inputPlace, id);
    }

    public void insertName(String inputPlace, String name) {
        webFormsData.put("in" + inputPlace, name);
    }

    public void insertValue(String inputPlace, String value) {
        webFormsData.put("iv" + inputPlace, value);
    }

    public void insertClass(String inputPlace, String className) {
        webFormsData.put("ic" + inputPlace, className);
    }

    public void insertStyle(String inputPlace, String style) {
        webFormsData.put("is" + inputPlace, style);
    }

    public void insertOptionTag(String inputPlace, String text, String value, boolean selected) {
        webFormsData.put("io" + inputPlace, value + '|' + text + (selected ? "|1" : ""));
    }

    public void insertCheckBoxTag(String inputPlace, String text, String value, boolean checked) {
        webFormsData.put("ik" + inputPlace, value + '|' + text + (checked ? "|1" : ""));
    }

    public void insertTitle(String inputPlace, String title) {
        webFormsData.put("il" + inputPlace, title);
    }

    public void insertText(String inputPlace, String text) {
        webFormsData.put("it" + inputPlace, text.replace("\n", "$[ln];"));
    }

    public void insertAttribute(String inputPlace, String attribute, String value) {
        webFormsData.put("ia" + inputPlace, attribute + (!value.isEmpty() ? '|' + value : ""));
    }

    // Delete
    public void deleteId(String inputPlace) {
        webFormsData.put("di" + inputPlace, "1");
    }

    public void deleteName(String inputPlace) {
        webFormsData.put("dn" + inputPlace, "1");
    }

    public void deleteValue(String inputPlace) {
        webFormsData.put("dv" + inputPlace, "1");
    }

    public void deleteClass(String inputPlace, String className) {
        webFormsData.put("dc" + inputPlace, className);
    }

    public void deleteStyle(String inputPlace, String styleName) {
        webFormsData.put("ds" + inputPlace, styleName);
    }

    public void deleteOptionTag(String inputPlace, String value) {
        webFormsData.put("do" + inputPlace, value);
    }

    public void deleteCheckBoxTag(String inputPlace, String value) {
        webFormsData.put("dk" + inputPlace, value);
    }

    public void deleteTitle(String inputPlace) {
        webFormsData.put("dl" + inputPlace, "1");
    }

    public void deleteText(String inputPlace) {
        webFormsData.put("dt" + inputPlace, "1");
    }

    public void deleteAttribute(String inputPlace, String attribute) {
        webFormsData.put("da" + inputPlace, attribute);
    }

    public void delete(String inputPlace) {
        webFormsData.put("de" + inputPlace, "1");
    }

    // Other
    public void setBackgroundColor(String inputPlace, String color) {
        webFormsData.put("bc" + inputPlace, color);
    }

    public void setTextColor(String inputPlace, String color) {
        webFormsData.put("tc" + inputPlace, color);
    }

    public void setFontName(String inputPlace, String name) {
        webFormsData.put("fn" + inputPlace, name);
    }

    public void setFontSize(String inputPlace, String size) {
        webFormsData.put("fs" + inputPlace, size);
    }

    public void setFontSize(String inputPlace, int size) {
        webFormsData.put("fs" + inputPlace, size + "px");
    }

    public void setFontBold(String inputPlace, boolean bold) {
        webFormsData.put("fb" + inputPlace, bold ? "1" : "0");
    }

    public void setVisible(String inputPlace, boolean visible) {
        webFormsData.put("vi" + inputPlace, visible ? "1" : "0");
    }

    public void setTextAlign(String inputPlace, String align) {
        webFormsData.put("ta" + inputPlace, align);
    }

    public void setReadOnly(String inputPlace, boolean readOnly) {
        webFormsData.put("sr" + inputPlace, readOnly ? "1" : "0");
    }

    public void setDisabled(String inputPlace, boolean disabled) {
        webFormsData.put("sd" + inputPlace, disabled ? "1" : "0");
    }

    public void setMinLength(String inputPlace, int length) {
        webFormsData.put("mn" + inputPlace, Integer.toString(length));
    }

    public void setMaxLength(String inputPlace, int length) {
        webFormsData.put("mx" + inputPlace, Integer.toString(length));
    }

    public void setSelectedValue(String inputPlace, String value) {
        webFormsData.put("ts" + inputPlace, value);
    }

    public void setSelectedIndex(String inputPlace, int index) {
        webFormsData.put("ti" + inputPlace, Integer.toString(index));
    }

    public void setCheckedValue(String inputPlace, String value, boolean selected) {
        webFormsData.put("ks" + inputPlace, value + "|" + (selected ? "1" : "0"));
    }

    public void setCheckedIndex(String inputPlace, int index, boolean selected) {
        webFormsData.put("ki" + inputPlace, index + "|" + (selected ? "1" : "0"));
    }

    public void callScript(String scriptText) {
        webFormsData.put("_", scriptText.replace("\n", "$[ln];"));
    }

    public void loadUrl(String inputPlace, String url) {
        webFormsData.put("lu" + inputPlace, url);
    }

    // Increase
    public void increaseMinLength(String inputPlace, int value) {
        webFormsData.put("+n" + inputPlace, Integer.toString(value));
    }

    public void increaseMaxLength(String inputPlace, int value) {
        webFormsData.put("+x" + inputPlace, Integer.toString(value));
    }

    public void increaseFontSize(String inputPlace, int value) {
        webFormsData.put("+f" + inputPlace, Integer.toString(value));
    }

    public void increaseWidth(String inputPlace, int value) {
        webFormsData.put("+w" + inputPlace, Integer.toString(value));
    }

    public void increaseHeight(String inputPlace, int value) {
        webFormsData.put("+h" + inputPlace, Integer.toString(value));
    }

    public void increaseValue(String inputPlace, int value) {
        webFormsData.put("+v" + inputPlace, Integer.toString(value));
    }

    // Decrease
    public void decreaseMinLength(String inputPlace, int value) {
        webFormsData.put("-n" + inputPlace, Integer.toString(value));
    }

    public void decreaseMaxLength(String inputPlace, int value) {
        webFormsData.put("-x" + inputPlace, Integer.toString(value));
    }

    public void decreaseFontSize(String inputPlace, int value) {
        webFormsData.put("-f" + inputPlace, Integer.toString(value));
    }

    public void decreaseWidth(String inputPlace, int value) {
        webFormsData.put("-w" + inputPlace, Integer.toString(value));
    }

    public void decreaseHeight(String inputPlace, int value) {
        webFormsData.put("-h" + inputPlace, Integer.toString(value));
    }

    public void decreaseValue(String inputPlace, int value) {
        webFormsData.put("-v" + inputPlace, Integer.toString(value));
    }

    // Pre Runner
    public void assignDelay(float second, int index) {
        String currentName = getNameByIndex(index);

        if (currentName.isEmpty()) {
            return;
        }

        changeNameByIndex(index, ":" + second + ")" + currentName);
    }

    public void assignDelayChange(float second, int index) {
        String currentName = getNameByIndex(index);

        if (currentName.isEmpty()) {
            return;
        }

        currentName = removeOuter(currentName, ":", ")");

        changeNameByIndex(index, ":" + second + ")" + currentName);
    }

    public void assignInterval(float second, int index) {
        String currentName = getNameByIndex(index);

        if (currentName.isEmpty()) {
            return;
        }

        changeNameByIndex(index, "(" + second + ")" + currentName);
    }

    public void assignIntervalChange(float second, int index) {
        String currentName = getNameByIndex(index);

        if (currentName.isEmpty()) {
            return;
        }

        currentName = removeOuter(currentName, "(", ")");

        changeNameByIndex(index, "(" + second + ")" + currentName);
    }

    // Get
    public String getFormsActionData() {
        StringBuilder returnValue = new StringBuilder();

        for (Map.Entry<String, String> entry : webFormsData.entrySet()) {
            returnValue.append(System.lineSeparator()).append(entry.getKey()).append('=').append(entry.getValue());
        }

        return returnValue.toString();
    }

    public String response() {
        return "[web-forms]" + getFormsActionData();
    }

    public String getFormsActionDataLineBreak() {
        StringBuilder returnValue = new StringBuilder();
        List<String> webFormsDataList = new ArrayList<>(webFormsData.keySet());

        int i = webFormsDataList.size();
        for (String key : webFormsDataList) {
            returnValue.append(key)
                       .append('=')
                       .append(webFormsData.get(key).replace("\"", "$[dq];"))
                       .append((i-- > 1) ? "$[sln];" : "");
        }

        return returnValue.toString();
    }

    // Export
    public String exportToWebFormsTag(String src) {
        return "<web-forms ac=\"" + getFormsActionDataLineBreak() + "\"" + (!src.isEmpty() ? " src=\"" + src + "\"" : "") + "></web-forms>";
    }

    // Overload
    public String exportToWebFormsTag(String width, String height, String src) {
        return "<web-forms ac=\"" + getFormsActionDataLineBreak() + "\" width=\"" + width + "\" height=\"" + height + "\"" + (!src.isEmpty() ? " src=\"" + src + "\"" : "") + "></web-forms>";
    }

    // Overload
    public String exportToWebFormsTag(int width, int height, String src) {
        return exportToWebFormsTag(width + "px", height + "px", src);
    }

    // Helper Methods
    private String getNameByIndex(int index) {
        List<String> keys = new ArrayList<>(webFormsData.keySet());
        return (index >= 0 && index < keys.size()) ? keys.get(index) : "";
    }

    private void changeNameByIndex(int index, String newName) {
        List<String> keys = new ArrayList<>(webFormsData.keySet());
        if (index >= 0 && index < keys.size()) {
            String value = webFormsData.remove(keys.get(index));
            webFormsData.put(newName, value);
        }
    }

    private String removeOuter(String text, String startString, String endString) {
        int start = text.indexOf(startString);
        if (start == -1) return text;

        int end = text.indexOf(endString, start);
        if (end == -1) return text;

        int lengthToRemove = (end - start) + endString.length();
        return text.substring(0, start) + text.substring(end + endString.length());
    }
    
    // InputPlace Class
    public static class InputPlace {
        public static String id(String id) {
            return id;
        }

        public static String name(String name) {
            return '(' + name + ')';
        }

        public static String name(String name, int index) {
            return '(' + name + ')' + index;
        }

        public static String tag(String tag) {
            return '<' + tag + '>';
        }

        public static String tag(String tag, int index) {
            return '<' + tag + '>' + index;
        }

        public static String className(String className) {
            return '{' + className + '}';
        }

        public static String className(String className, int index) {
            return '{' + className + '}' + index;
        }

        public static String query(String query) {
            return "*" + query.replace("=", "$[eq];");
        }

        public static String queryAll(String query) {
            return "[" + query.replace("=", "$[eq];");
        }
    }

    // ExtensionWebFormsMethods Class
    public static class ExtensionWebFormsMethods {
        public static String appendPlace(String text, String value) {
            if (text.length() < 1) {
                return value;
            }

            if (text.charAt(0) != '>') {
                text = '>' + text;
            }

            return text + "|" + value;
        }

        public static String exportToWebFormsTag(String src) {
            return "<web-forms src=\"" + src + "\"></web-forms>";
        }

        // Overload
        public static String exportToWebFormsTag(String src, int width, int height) {
            return "<web-forms src=\"" + src + "\" width=\"" + width + "\" height=\"" + height + "\"></web-forms>";
        }

        public static String exportActionControlsToWebFormsTag(String actionControls) {
            return "<web-forms ac=\"" + actionControls + "\"></web-forms>";
        }

        public static String removeOuter(String text, String startString, String endString) {
            int start = text.indexOf(startString);
            if (start == -1) return text;

            int end = text.indexOf(endString, start);
            if (end == -1) return text;

            int lengthToRemove = (end - start) + endString.length();
            return text.substring(0, start) + text.substring(end + endString.length());
        }
    }
}