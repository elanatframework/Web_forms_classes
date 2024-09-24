use \ArrayObject;

class WebForms
{
    private $webFormsData;

    public function __construct()
    {
        $this->webFormsData = new ArrayObject();
    }

    // Add
    public function addId($inputPlace, $id)
    {
        $this->webFormsData["ai" . $inputPlace] = $id;
    }

    public function addName($inputPlace, $name)
    {
        $this->webFormsData["an" . $inputPlace] = $name;
    }

    public function addValue($inputPlace, $value)
    {
        $this->webFormsData["av" . $inputPlace] = $value;
    }

    public function addClass($inputPlace, $class)
    {
        $this->webFormsData["ac" . $inputPlace] = $class;
    }

    public function addStyle($inputPlace, $style)
    {
        $this->webFormsData["as" . $inputPlace] = $style;
    }

    public function addOptionTag($inputPlace, $text, $value, $selected = false)
    {
        $this->webFormsData["ao" . $inputPlace] = $value . '|' . $text . ($selected ? '|1' : '');
    }

    public function addCheckBoxTag($inputPlace, $text, $value, $checked = false)
    {
        $this->webFormsData["ak" . $inputPlace] = $value . '|' . $text . ($checked ? '|1' : '');
    }

    public function addTitle($inputPlace, $title)
    {
        $this->webFormsData["al" . $inputPlace] = $title;
    }

    public function addText($inputPlace, $text)
    {
        $this->webFormsData["at" . $inputPlace] = str_replace("\n", "$[ln];", $text);
    }

    public function addAttribute($inputPlace, $attribute, $value = "")
    {
        $this->webFormsData["aa" . $inputPlace] = $attribute . '|' . $value;
    }

    public function addTag($inputPlace, $tagName, $id = "")
    {
        $this->webFormsData["nt" . $inputPlace] = $tagName . (!empty($id) ? '|' . $id : '');
    }

    // Set methods
    public function setId($inputPlace, $id)
    {
        $this->webFormsData["si" . $inputPlace] = $id;
    }

    public function setName($inputPlace, $name)
    {
        $this->webFormsData["sn" . $inputPlace] = $name;
    }

    public function setValue($inputPlace, $value)
    {
        $this->webFormsData["sv" . $inputPlace] = $value;
    }

    public function setClass($inputPlace, $class)
    {
        $this->webFormsData["sc" . $inputPlace] = $class;
    }

    public function setStyle($inputPlace, $style)
    {
        $this->webFormsData["ss" . $inputPlace] = $style;
    }

    public function setOptionTag($inputPlace, $text, $value, $selected = false)
    {
        $this->webFormsData["so" . $inputPlace] = $value . '|' . $text . ($selected ? '|1' : '');
    }

    public function setChecked($inputPlace, $checked = false)
    {
        $this->webFormsData["sk" . $inputPlace] = $checked ? "1" : "0";
    }

    public function setCheckBoxTagToList($inputPlace, $text, $value, $checked = false)
    {
        $this->webFormsData["sk" . $inputPlace] = $value . '|' . $text . ($checked ? '|1' : '');
    }

    public function setTitle($inputPlace, $title)
    {
        $this->webFormsData["sl" . $inputPlace] = $title;
    }

    public function setText($inputPlace, $text)
    {
        $this->webFormsData["st" . $inputPlace] = str_replace("\n", "$[ln];", $text);
    }

    public function setAttribute($inputPlace, $attribute, $value = "")
    {
        $this->webFormsData["sa" . $inputPlace] = $attribute . (!empty($value) ? '|' . $value : '');
    }

    public function setWidth($inputPlace, $width)
    {
        $this->webFormsData["sw" . $inputPlace] = $width;
    }

    public function setHeight($inputPlace, $height)
    {
        $this->webFormsData["sh" . $inputPlace] = $height;
    }

    public function insertId($inputPlace, $id)
    {
        $this->webFormsData["ii" . $inputPlace] = $id;
    }

    public function insertName($inputPlace, $name)
    {
        $this->webFormsData["in" . $inputPlace] = $name;
    }

    public function insertValue($inputPlace, $value)
    {
        $this->webFormsData["iv" . $inputPlace] = $value;
    }

    public function insertClass($inputPlace, $class)
    {
        $this->webFormsData["ic" . $inputPlace] = $class;
    }

    public function insertStyle($inputPlace, $style)
    {
        $this->webFormsData["is" . $inputPlace] = $style;
    }

    public function insertOptionTag($inputPlace, $text, $value, $selected = false)
    {
        $this->webFormsData["io" . $inputPlace] = $value . '|' . $text . ($selected ? '|1' : '');
    }

    public function insertCheckBoxTag($inputPlace, $text, $value, $checked = false)
    {
        $this->webFormsData["ik" . $inputPlace] = $value . '|' . $text . ($checked ? '|1' : '');
    }

    public function insertTitle($inputPlace, $title)
    {
        $this->webFormsData["il" . $inputPlace] = $title;
    }

    public function insertText($inputPlace, $text)
    {
        $this->webFormsData["it" . $inputPlace] = str_replace("\n", "$[ln];", $text);
    }

    public function insertAttribute($inputPlace, $attribute, $value = "")
    {
        $this->webFormsData["ia" . $inputPlace] = $attribute . (!empty($value) ? '|' . $value : '');
    }

    // Delete methods
    public function deleteId($inputPlace)
    {
        $this->webFormsData["di" . $inputPlace] = "1";
    }

    public function deleteName($inputPlace)
    {
        $this->webFormsData["dn" . $inputPlace] = "1";
    }

    public function deleteValue($inputPlace)
    {
        $this->webFormsData["dv" . $inputPlace] = "1";
    }

    public function deleteClass($inputPlace, $className)
    {
        $this->webFormsData["dc" . $inputPlace] = $className;
    }

    public function deleteStyle($inputPlace, $styleName)
    {
        $this->webFormsData["ds" . $inputPlace] = $styleName;
    }

    public function deleteOptionTag($inputPlace, $value)
    {
        $this->webFormsData["do" . $inputPlace] = $value;
    }

    public function deleteCheckBoxTag($inputPlace, $value)
    {
        $this->webFormsData["dk" . $inputPlace] = $value;
    }

    public function deleteTitle($inputPlace)
    {
        $this->webFormsData["dl" . $inputPlace] = "1";
    }

    public function deleteText($inputPlace)
    {
        $this->webFormsData["dt" . $inputPlace] = "1";
    }

    public function deleteAttribute($inputPlace, $attribute)
    {
        $this->webFormsData["da" . $inputPlace] = $attribute;
    }

    public function delete($inputPlace)
    {
        $this->webFormsData["de" . $inputPlace] = "1";
    }

    // Other methods
    public function setBackgroundColor($inputPlace, $color)
    {
        $this->webFormsData["bc" . $inputPlace] = $color;
    }

    public function setTextColor($inputPlace, $color)
    {
        $this->webFormsData["tc" . $inputPlace] = $color;
    }

    public function setFontName($inputPlace, $name)
    {
        $this->webFormsData["fn" . $inputPlace] = $name;
    }

    public function setFontSize($inputPlace, $size)
    {
        $this->webFormsData["fs" . $inputPlace] = $size;
    }

    public function setFontBold($inputPlace, $bold)
    {
        $this->webFormsData["fb" . $inputPlace] = $bold ? "1" : "0";
    }

    public function setVisible($inputPlace, $visible)
    {
        $this->webFormsData["vi" . $inputPlace] = $visible ? "1" : "0";
    }

    public function setTextAlign($inputPlace, $align)
    {
        $this->webFormsData["ta" . $inputPlace] = $align;
    }

    public function setReadOnly($inputPlace, $readOnly)
    {
        $this->webFormsData["sr" . $inputPlace] = $readOnly ? "1" : "0";
    }

    public function setDisabled($inputPlace, $disabled)
    {
        $this->webFormsData["sd" . $inputPlace] = $disabled ? "1" : "0";
    }

    public function setMinLength($inputPlace, $length)
    {
        $this->webFormsData["mn" . $inputPlace] = (string)$length;
    }

    public function setMaxLength($inputPlace, $length)
    {
        $this->webFormsData["mx" . $inputPlace] = (string)$length;
    }

    public function setSelectedValue($inputPlace, $value)
    {
        $this->webFormsData["ts" . $inputPlace] = $value;
    }

    public function setSelectedIndex($inputPlace, $index)
    {
        $this->webFormsData["ti" . $inputPlace] = (string)$index;
    }

    public function callScript($scriptText)
    {
        $this->webFormsData["_"] = str_replace("\n", "$[ln];", $scriptText);
    }

    public function loadUrl($inputPlace, $url)
    {
        $this->webFormsData["lu" . $inputPlace] = $url;
    }

    // Increase and Decrease methods
    public function increaseMinLength($inputPlace, $value)
    {
        $this->webFormsData["+n" . $inputPlace] = (string)$value;
    }

    public function increaseMaxLength($inputPlace, $value)
    {
        $this->webFormsData["+x" . $inputPlace] = (string)$value;
    }

    public function increaseFontSize($inputPlace, $value)
    {
        $this->webFormsData["+f" . $inputPlace] = (string)$value;
    }

    public function increaseWidth($inputPlace, $value)
    {
        $this->webFormsData["+w" . $inputPlace] = (string)$value;
    }

    public function increaseHeight($inputPlace, $value)
    {
        $this->webFormsData["+h" . $inputPlace] = (string)$value;
    }

    public function increaseValue($inputPlace, $value)
    {
        $this->webFormsData["+v" . $inputPlace] = (string)$value;
    }

    public function decreaseMinLength($inputPlace, $value)
    {
        $this->webFormsData["-n" . $inputPlace] = (string)$value;
    }

    public function decreaseMaxLength($inputPlace, $value)
    {
        $this->webFormsData["-x" . $inputPlace] = (string)$value;
    }

    public function decreaseFontSize($inputPlace, $value)
    {
        $this->webFormsData["-f" . $inputPlace] = (string)$value;
    }

    public function decreaseWidth($inputPlace, $value)
    {
        $this->webFormsData["-w" . $inputPlace] = (string)$value;
    }

    public function decreaseHeight($inputPlace, $value)
    {
        $this->webFormsData["-h" . $inputPlace] = (string)$value;
    }

    public function decreaseValue($inputPlace, $value)
    {
        $this->webFormsData["-v" . $inputPlace] = (string)$value;
    }

    // Get methods
    public function getFormsActionData()
    {
        $returnValue = "";

        foreach ($this->webFormsData as $name => $value) {
            $returnValue .= PHP_EOL . $name . "=" . $value;
        }

        return $returnValue;
    }

    public function response()
    {
        return "[web-forms]" . $this->getFormsActionData();
    }

    public function getFormsActionDataLineBreak()
    {
        $returnValue = "";
        $webFormsDataList = $this->webFormsData;

        $i = count($webFormsDataList);
        foreach ($webFormsDataList as $name => $value) {
            $returnValue .= $name . "=" . str_replace("\"", "$[dq];", $value) . (($i-- > 1) ? "$[sln];" : "");
        }

        return $returnValue;
    }

    // Export methods
    public function exportToWebFormsTag($src = null)
    {
        return "<web-forms ac=\"" . $this->getFormsActionDataLineBreak() . "\"" . (!empty($src) ? " src=\"" . $src . "\"" : "") . "></web-forms>";
    }

    public function exportToWebFormsTagWithDimensions($width, $height, $src = null)
    {
        return "<web-forms ac=\"" . $this->getFormsActionDataLineBreak() . "\" width=\"" . $width . "\" height=\"" . $height . "\"" . (!empty($src) ? " src=\"" . $src . "\"" : "") . "></web-forms>";
    }

    public function exportToWebFormsTagWithDimensionsInt($width, $height, $src = null)
    {
        return $this->exportToWebFormsTagWithDimensions($width . "px", $height . "px", $src);
    }
}

class InputPlace
{
    public static function id($id)
    {
        return $id;
    }

    public static function name($name)
    {
        return '(' . $name . ')';
    }

    public static function nameWithIndex($name, $index)
    {
        return '(' . $name . ')' . $index;
    }

    public static function tag($tag)
    {
        return '<' . $tag . '>';
    }

    public static function tagWithIndex($tag, $index)
    {
        return '<' . $tag . '>' . $index;
    }

    public static function mediaClass($class)
    {
        return '{' . $class . '}';
    }

    public static function mediaClassWithIndex($class, $index)
    {
        return '{' . $class . '}' . $index;
    }

    public static function query($query)
    {
        return "*" . str_replace("=", "$[eq];", $query);
    }

    public static function queryAll($query)
    {
        return "[" . str_replace("=", "$[eq];", $query);
    }
}

// Extension methods class
class ExtensionWebFormsMethods
{
    public static function appendPlace($text, $value)
    {
        if (strlen($text) < 1) {
            return $value;
        }

        if ($text[0] != '>') {
            $text = '>' . $text;
        }

        return $text . "|" . $value;
    }

    public static function exportToWebFormsTag($src)
    {
        return "<web-forms src=\"" . $src . "\"></web-forms>";
    }

    public static function exportToWebFormsTagWithDimensions($src, $width, $height)
    {
        return "<web-forms src=\"" . $src . "\" width=\"" . $width . "\" height=\"" . $height . "\"></web-forms>";
    }

    public static function exportActionControlsToWebFormsTag($actionControls)
    {
        return "<web-forms ac=\"" . $actionControls . "\"></web-forms>";
    }

    public static function removeOuter($text, $startString, $endString)
    {
        $start = strpos($text, $startString);
        if ($start === false) return $text;

        $end = strpos($text, $endString, $start);
        if ($end === false) return $text;

        $lengthToRemove = ($end - $start) + strlen($endString);

        return substr($text, 0, $start) . substr($text, $end + strlen($endString));
    }
}
