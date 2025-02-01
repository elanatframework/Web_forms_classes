<?php

// Compatible with WebFormsJS version 1.6

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

    public function addStyleWithNameValue($inputPlace, $name, $value)
    {
        $this->webFormsData["as" . $inputPlace] = $name . ':' . $value;
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

    public function addTextToUp($inputPlace, $text)
    {
        $this->webFormsData["pt" . $inputPlace] = str_replace("\n", "$[ln];", $text);
    }

    public function addAttribute($inputPlace, $attribute, $value = "")
    {
        $this->webFormsData["aa" . $inputPlace] = $attribute . '|' . $value;
    }

    public function addTag($inputPlace, $tagName, $id = "")
    {
        $this->webFormsData["nt" . $inputPlace] = $tagName . (!empty($id) ? '|' . $id : '');
    }

    public function addTagToUp($inputPlace, $tagName, $id = "")
    {
        $this->webFormsData["ut" . $inputPlace] = $tagName . (!empty($id) ? '|' . $id : '');
    }

    public function addTagBefore($inputPlace, $tagName, $id = "")
    {
        $this->webFormsData["bt" . $inputPlace] = $tagName . (!empty($id) ? '|' . $id : '');
    }

    public function addTagAfter($inputPlace, $tagName, $id = "")
    {
        $this->webFormsData["ft" . $inputPlace] = $tagName . (!empty($id) ? '|' . $id : '');
    }

    // Set
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

    public function setStyleWithNameValue($inputPlace, $name, $value)
    {
        $this->webFormsData["ss" . $inputPlace] = $name . ':' . $value;
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

    // Insert
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

    public function insertStyleWithNameValue($inputPlace, $name, $value)
    {
        $this->webFormsData["is" . $inputPlace] = $name . ':' . $value;
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

    // Delete
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

    public function deleteAllOptionTag($inputPlace)
    {
        $this->webFormsData["do" . $inputPlace] = "*";
    }

    public function deleteCheckBoxTag($inputPlace, $value)
    {
        $this->webFormsData["dk" . $inputPlace] = $value;
    }

    public function deleteAllCheckBoxTag($inputPlace)
    {
        $this->webFormsData["dk" . $inputPlace] = "*";
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

    public function deleteParent($inputPlace)
    {
        $this->webFormsData["dp" . $inputPlace] = "1";
    }

    // Other
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

    public function setFocus($inputPlace, $focus)
    {
        $this->webFormsData["sf" . $inputPlace] = $focus ? "1" : "0";
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

    public function setCheckedValue($inputPlace, $value, $selected)
    {
        $this->webFormsData["ks" . $inputPlace] = $value . "|" . ($selected ? "1" : "0");
    }

    public function setCheckedIndex($inputPlace, $index, $selected)
    {
        $this->webFormsData["ki" . $inputPlace] = $index . "|" . ($selected ? "1" : "0");
    }

    public function callScript($scriptText)
    {
        $this->webFormsData["_"] = str_replace("\n", "$[ln];", $scriptText);
    }

    public function loadUrl($inputPlace, $url)
    {
        $this->webFormsData["lu" . $inputPlace] = $url;
    }

    public function changeUrl($url)
    {
        $this->webFormsData["cu"] = $url;
    }

    public function removeSessionCache($cacheKey)
    {
        $this->webFormsData["rs"] = $cacheKey;
    }

    public function removeAllSessionCache()
    {
        $this->webFormsData["rs"] = "*";
    }

    public function removeCache($cacheKey)
    {
        $this->webFormsData["rd"] = $cacheKey;
    }

    public function removeAllCache()
    {
        $this->webFormsData["rd"] = "*";
    }

    public function setSessionCache()
    {
        $this->webFormsData["cs"] = "1";
    }

    public function setCache($second)
    {
        $this->webFormsData["cd"] = $second;
    }

    public function setCacheAll()
    {
        $this->webFormsData["cd"] = "*";
    }

    // Increase
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

    // Decrease
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

    // Event
    public function setPostEvent($inputPlace, $htmlEvent)
    {
        $this->webFormsData["Ep" . $inputPlace] = $htmlEvent;
    }

    public function setPostEventAdding($inputPlace, $htmlEvent)
    {
        $this->webFormsData["Ep" . $inputPlace] = $htmlEvent . "|+";
    }

    public function setPostEventTo($inputPlace, $htmlEvent, $outputPlace)
    {
        $this->webFormsData["Ep" . $inputPlace] = $htmlEvent . "|" . $outputPlace;
    }

    public function setPostEventListener($inputPlace, $htmlEventListener)
    {
        $this->webFormsData["EP" . $inputPlace] = $htmlEventListener;
    }

    public function setPostEventListenerAdding($inputPlace, $htmlEventListener)
    {
        $this->webFormsData["EP" . $inputPlace] = $htmlEventListener . "|+";
    }

    public function setPostEventListenerTo($inputPlace, $htmlEventListener, $outputPlace)
    {
        $this->webFormsData["EP" . $inputPlace] = $htmlEventListener . "|" . $outputPlace;
    }

    public function setGetEvent($inputPlace, $htmlEvent, $path = null)
    {
        $this->webFormsData["Eg" . $inputPlace] = $htmlEvent . "|" . ($path ? $path : "#");
    }

    public function setGetEventWithOutputPlace($inputPlace, $htmlEvent, $outputPlace, $path = null)
    {
        $this->webFormsData["Eg" . $inputPlace] = $htmlEvent . "|" . ($path ? $path : "#") . "|" . $outputPlace;
    }

    public function setGetEventInForm($inputPlace, $htmlEvent)
    {
        $this->webFormsData["Eg" . $inputPlace] = $htmlEvent;
    }

    public function setGetEventInFormWithOutputPlace($inputPlace, $htmlEvent, $outputPlace)
    {
        $this->webFormsData["Eg" . $inputPlace] = $htmlEvent . "|" . $outputPlace;
    }

    public function setGetEventListener($inputPlace, $htmlEventListener, $path = null)
    {
        $this->webFormsData["EG" . $inputPlace] = $htmlEventListener . "|" . ($path ? $path : "#");
    }

    public function setGetEventListenerWithOutputPlace($inputPlace, $htmlEventListener, $outputPlace, $path = null)
    {
        $this->webFormsData["EG" . $inputPlace] = $htmlEventListener . "|" . ($path ? $path : "#") . "|" . $outputPlace;
    }

    public function setGetEventInFormListener($inputPlace, $htmlEventListener)
    {
        $this->webFormsData["EG" . $inputPlace] = $htmlEventListener;
    }

    public function setGetEventInFormListenerWithOutputPlace($inputPlace, $htmlEventListener, $outputPlace)
    {
        $this->webFormsData["EG" . $inputPlace] = $htmlEventListener . "|" . $outputPlace;
    }

    public function setTagEvent($inputPlace, $htmlEvent, $outputPlace)
    {
        $this->webFormsData["Et" . $inputPlace] = $htmlEvent . "|" . $outputPlace;
    }

    public function setTagEventListener($inputPlace, $htmlEvent, $outputPlace)
    {
        $this->webFormsData["ET" . $inputPlace] = $htmlEvent . "|" . $outputPlace;
    }

    public function removePostEvent($inputPlace, $htmlEvent)
    {
        $this->webFormsData["Rp" . $inputPlace] = $htmlEvent;
    }

    public function removeGetEvent($inputPlace, $htmlEvent)
    {
        $this->webFormsData["Rg" . $inputPlace] = $htmlEvent;
    }

    public function removeTagEvent($inputPlace, $htmlEvent)
    {
        $this->webFormsData["Rt" . $inputPlace] = $htmlEvent;
    }

    public function removePostEventListener($inputPlace, $htmlEventListener)
    {
        $this->webFormsData["RP" . $inputPlace] = $htmlEventListener;
    }

    public function removeGetEventListener($inputPlace, $htmlEventListener)
    {
        $this->webFormsData["RG" . $inputPlace] = $htmlEventListener;
    }

    public function removeTagEventListener($inputPlace, $htmlEventListener)
    {
        $this->webFormsData["RT" . $inputPlace] = $htmlEventListener;
    }

    // Save
    public function saveId($inputPlace, $key = ".")
    {
        $this->webFormsData["@gi" . $inputPlace] = $key;
    }

    public function saveName($inputPlace, $key = ".")
    {
        $this->webFormsData["@gn" . $inputPlace] = $key;
    }

    public function saveValue($inputPlace, $key = ".")
    {
        $this->webFormsData["@gv" . $inputPlace] = $key;
    }

    public function saveValueLength($inputPlace, $key = ".")
    {
        $this->webFormsData["@ge" . $inputPlace] = $key;
    }

    public function saveClass($inputPlace, $key = ".")
    {
        $this->webFormsData["@gc" . $inputPlace] = $key;
    }

    public function saveStyle($inputPlace, $key = ".")
    {
        $this->webFormsData["@gs" . $inputPlace] = $key;
    }

    public function saveTitle($inputPlace, $key = ".")
    {
        $this->webFormsData["@gl" . $inputPlace] = $key;
    }

    public function saveText($inputPlace, $key = ".")
    {
        $this->webFormsData["@gt" . $inputPlace] = $key;
    }

    public function saveTextLength($inputPlace, $key = ".")
    {
        $this->webFormsData["@gg" . $inputPlace] = $key;
    }

    public function saveAttribute($inputPlace, $attribute, $key = ".")
    {
        $this->webFormsData["@ga" . $inputPlace] = $key . '|' . $attribute;
    }

    public function saveWidth($inputPlace, $key = ".")
    {
        $this->webFormsData["@gw" . $inputPlace] = $key;
    }

    public function saveHeight($inputPlace, $key = ".")
    {
        $this->webFormsData["@gh" . $inputPlace] = $key;
    }

    public function saveReadOnly($inputPlace, $key = ".")
    {
        $this->webFormsData["@gr" . $inputPlace] = $key;
    }

    public function saveSelectedIndex($inputPlace, $key = ".")
    {
        $this->webFormsData["@gx" . $inputPlace] = $key;
    }

    public function saveTextAlign($inputPlace, $key = ".")
    {
        $this->webFormsData["@ta" . $inputPlace] = $key;
    }

    public function saveNodeLength($inputPlace, $key = ".")
    {
        $this->webFormsData["@nl" . $inputPlace] = $key;
    }

    public function saveVisible($inputPlace, $key = ".")
    {
        $this->webFormsData["@vi" . $inputPlace] = $key;
    }

    // Pre Runner
    public function assignDelay($second, $index = -1)
    {
        $currentName = $this->webFormsData->getIterator()->key();

        if (empty($currentName))
            return;

        $this->webFormsData->offsetSet(":" . $second . ")" . $currentName, $this->webFormsData->offsetGet($currentName));
        $this->webFormsData->offsetUnset($currentName);
    }

    public function assignDelayChange($second, $index = -1)
    {
        $currentName = $this->webFormsData->getIterator()->key();

        if (empty($currentName))
            return;

        $currentName = str_replace(":", "", $currentName);
        $currentName = str_replace(")", "", $currentName);

        $this->webFormsData->offsetSet(":" . $second . ")" . $currentName, $this->webFormsData->offsetGet($currentName));
        $this->webFormsData->offsetUnset($currentName);
    }

    public function assignInterval($second, $index = -1)
    {
        $currentName = $this->webFormsData->getIterator()->key();

        if (empty($currentName))
            return;

        $this->webFormsData->offsetSet("(" . $second . ")" . $currentName, $this->webFormsData->offsetGet($currentName));
        $this->webFormsData->offsetUnset($currentName);
    }

    public function assignIntervalChange($second, $index = -1)
    {
        $currentName = $this->webFormsData->getIterator()->key();

        if (empty($currentName))
            return;

        $currentName = str_replace("(", "", $currentName);
        $currentName = str_replace(")", "", $currentName);

        $this->webFormsData->offsetSet("(" . $second . ")" . $currentName, $this->webFormsData->offsetGet($currentName));
        $this->webFormsData->offsetUnset($currentName);
    }

    // Index
    public function startIndex($name = "")
    {
        $this->webFormsData["#"] = $name;
    }

    // Get
    public function getFormsActionData()
    {
        $returnValue = "";

        foreach ($this->webFormsData as $name => $value) {
            $returnValue .= PHP_EOL . $name;

            if (!empty($value))
                $returnValue .= "=" . $value;
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
            $returnValue .= $name;

            if (!empty($value))
                $returnValue .= "=" . str_replace("\"", "$[dq];", $value);

            if ($i-- > 1)
                $returnValue .= "$[sln];";
        }

        return $returnValue;
    }

    // Export
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

    public function doneToWebFormsTag($id = null)
    {
        return "<web-forms ac=\"" . $this->getFormsActionDataLineBreak() . "\"" . (!empty($id) ? " id=\"" . $id . "\" done=\"true\"" : "") . "></web-forms>";
    }

    public function exportToArrayObject()
    {
        return $this->webFormsData;
    }

    public function appendForm(WebForms $form)
    {
        foreach ($form->exportToArrayObject() as $name => $value) {
            $this->webFormsData[$name] = $value;
        }
    }

    public function setHeaders($context)
    {
        $context->response->headers->set("Content-Type", "text/plain");
    }

    public function clean()
    {
        $this->webFormsData = new ArrayObject();
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

class OutputPlace extends InputPlace { }

class Fetch
{
    public static function random($maxValue)
    {
        return "@mr" . $maxValue;
    }

    public static function randomRange($minValue, $maxValue)
    {
        return "@mr" . $maxValue . "," . $minValue;
    }

    public static $dateYear = "@dy";
    public static $dateMonth = "@dm";
    public static $dateDay = "@dd";
    public static $dateHours = "@dh";
    public static $dateMinutes = "@di";
    public static $dateSeconds = "@ds";
    public static $dateMilliseconds = "@dl";

    public static function cookie($key)
    {
        return "@co" . $key;
    }

    public static function session($key)
    {
        return "@cs" . $key;
    }

    public static function sessionWithReplace($key, $replaceValue)
    {
        return "@cs" . $key . "," . $replaceValue;
    }

    public static function sessionAndRemove($key)
    {
        return "@cl" . $key;
    }

    public static function sessionAndRemoveWithReplace($key, $replaceValue)
    {
        return "@cl" . $key . "," . $replaceValue;
    }

    public static function saved($key = ".")
    {
        return "@cl" . $key;
    }

    public static function cache($key)
    {
        return "@cd" . $key;
    }

    public static function cacheWithReplace($key, $replaceValue)
    {
        return "@cd" . $key . "," . $replaceValue;
    }

    public static function cacheAndRemove($key)
    {
        return "@ct" . $key;
    }

    public static function cacheAndRemoveWithReplace($key, $replaceValue)
    {
        return "@ct" . $key . "," . $replaceValue;
    }

    public static function script($scriptText)
    {
        return "@_" . str_replace("\n", "$[ln];", $scriptText);
    }
}

class HtmlEvent
{
    public static $onAbort = "onabort";
    public static $onAfterPrint = "onafterprint";
    public static $onBeforePrint = "onbeforeprint";
    public static $onBeforeUnload = "onbeforeunload";
    public static $onBlur = "onblur";
    public static $onCanPlay = "oncanplay";
    public static $onCanPlayThrough = "oncanplaythrough";
    public static $onChange = "onchange";
    public static $onClick = "onclick";
    public static $onCopy = "oncopy";
    public static $onCut = "oncut";
    public static $onDoubleClick = "ondblclick";
    public static $onDrag = "ondrag";
    public static $onDragEnd = "ondragend";
    public static $onDragEnter = "ondragenter";
    public static $onDragLeave = "ondragleave";
    public static $onDragOver = "ondragover";
    public static $onDragStart = "ondragstart";
    public static $onDrop = "ondrop";
    public static $onDurationChange = "ondurationchange";
    public static $onEnded = "onended";
    public static $onError = "onerror";
    public static $onFocus = "onfocus";
    public static $onFocusin = "onfocusin";
    public static $onFocusOut = "onfocusout";
    public static $onHashChange = "onhashchange";
    public static $onInput = "oninput";
    public static $onInvalid = "oninvalid";
    public static $onKeyDown = "onkeydown";
    public static $onKeyPress = "onkeypress";
    public static $onKeyUp = "onkeyup";
    public static $onLoad = "onload";
    public static $onLoadedData = "onloadeddata";
    public static $onLoadedMetaData = "onloadedmetadata";
    public static $onLoadStart = "onloadstart";
    public static $onMouseDown = "onmousedown";
    public static $onMouseEnter = "onmouseenter";
    public static $onMouseLeave = "onmouseleave";
    public static $onMouseMove = "onmousemove";
    public static $onMouseOver = "onmouseover";
    public static $onMouseOut = "onmouseout";
    public static $onMouseUp = "onmouseup";
    public static $onOffline = "onoffline";
    public static $onOnline = "ononline";
    public static $onPageHide = "onpagehide";
    public static $onPageShow = "onpageshow";
    public static $onPaste = "onpaste";
    public static $onPause = "onpause";
    public static $onPlay = "onplay";
    public static $onPlaying = "onplaying";
    public static $onProgress = "onprogress";
    public static $onRateChange = "onratechange";
    public static $onResize = "onresize";
    public static $onReset = "onreset";
    public static $onScroll = "onscroll";
    public static $onSearch = "onsearch";
    public static $onSeeked = "onseeked";
    public static $onSeeking = "onseeking";
    public static $onSelect = "onselect";
    public static $onStalled = "onstalled";
    public static $onSubmit = "onsubmit";
    public static $onSuspend = "onsuspend";
    public static $onTimeUpdate = "ontimeupdate";
    public static $onToggle = "ontoggle";
    public static $onTouchCancel = "ontouchcancel";
    public static $onTouchend = "ontouchend";
    public static $onTouchMove = "ontouchmove";
    public static $onTouchStart = "ontouchstart";
    public static $onUnload = "onunload";
    public static $onVolumeChange = "onvolumechange";
    public static $onWaiting = "onwaiting";
}

class HtmlEventListener
{
    public static $abort = "abort";
    public static $afterPrint = "afterprint";
    public static $beforePrint = "beforeprint";
    public static $beforeUnload = "beforeunload";
    public static $blur = "blur";
    public static $canPlay = "canplay";
    public static $canPlayThrough = "canplaythrough";
    public static $change = "change";
    public static $click = "click";
    public static $copy = "copy";
    public static $cut = "cut";
    public static $doubleClick = "dblclick";
    public static $drag = "drag";
    public static $dragEnd = "dragend";
    public static $dragEnter = "dragenter";
    public static $dragLeave = "dragleave";
    public static $dragOver = "dragover";
    public static $dragStart = "dragstart";
    public static $drop = "drop";
    public static $durationChange = "durationchange";
    public static $ended = "ended";
    public static $error = "error";
    public static $focus = "focus";
    public static $focusIn = "focusin";
    public static $focusOut = "focusout";
    public static $hashChange = "hashchange";
    public static $input = "input";
    public static $invalid = "invalid";
    public static $keyDown = "keydown";
    public static $keyPress = "keypress";
    public static $keyUp = "keyup";
    public static $load = "load";
    public static $loadedData = "loadeddata";
    public static $loadedMetaData = "loadedmetadata";
    public static $loadStart = "loadstart";
    public static $mouseDown = "mousedown";
    public static $mouseEnter = "mouseenter";
    public static $mouseLeave = "mouseleave";
    public static $mouseMove = "mousemove";
    public static $mouseOver = "mouseover";
    public static $mouseOut = "mouseout";
    public static $mouseUp = "mouseup";
    public static $offline = "offline";
    public static $online = "online";
    public static $pageHide = "pagehide";
    public static $pageShow = "pageshow";
    public static $paste = "paste";
    public static $pause = "pause";
    public static $play = "play";
    public static $playing = "playing";
    public static $progress = "progress";
    public static $rateChange = "ratechange";
    public static $resize = "resize";
    public static $reset = "reset";
    public static $scroll = "scroll";
    public static $search = "search";
    public static $seeked = "seeked";
    public static $seeking = "seeking";
    public static $select = "select";
    public static $stalled = "stalled";
    public static $submit = "submit";
    public static $suspend = "suspend";
    public static $timeUpdate = "timeupdate";
    public static $toggle = "toggle";
    public static $touchCancel = "touchcancel";
    public static $touchEnd = "touchend";
    public static $touchMove = "touchmove";
    public static $touchStart = "touchstart";
    public static $unload = "unload";
    public static $volumeChange = "volumechange";
    public static $waiting = "waiting";

    public static $animationEnd = "animationend";
    public static $animationIteration = "animationiteration";
    public static $animationStart = "animationstart";
    public static $contextMenu = "contextmenu";
    public static $fullScreenChange = "fullscreenchange";
    public static $fullScreenError = "fullscreenerror";
    public static $popState = "popstate";
    public static $transitionEnd = "transitionend";
    public static $storage = "storage";
    public static $wheel = "wheel";
}

class ExtensionWebFormsMethods
{
    /**
     * This Method Does Not Support QueryAll
     */
    public static function appendPlace($text, $value)
    {
        if (strlen($text) < 1) {
            return $value;
        }

        return $text . "|" . $value;
    }

    public static function appendParent($text)
    {
        return "/" . $text;
    }

    public static function exportToWebFormsTag($src)
    {
        return '<web-forms src="' . $src . '"></web-forms>';
    }

    // Overload
    public static function exportToWebFormsTagWithDimensions($src, $width, $height)
    {
        return '<web-forms src="' . $src . '" width="' . $width . '" height="' . $height . '"></web-forms>';
    }

    public static function exportActionControlsToWebFormsTag($actionControls)
    {
        return '<web-forms ac="' . $actionControls . '"></web-forms>';
    }

    public static function removeOuter($text, $startString, $endString)
    {
        $start = strpos($text, $startString);
        if ($start === false) {
            return $text;
        }

        $end = strpos($text, $endString, $start);
        if ($end === false) {
            return $text;
        }

        $lengthToRemove = ($end - $start) + strlen($endString);

        return substr($text, 0, $start) . substr($text, $end + strlen($endString));
    }
}
