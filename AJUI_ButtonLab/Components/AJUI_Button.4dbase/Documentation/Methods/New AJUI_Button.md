<!--New AJUI_Button ( {template_obj} ) -> AJUI Tip instance -->

# New AJUI_Button

## Parameters

 *  (object) (optional) template :
   * (text) templateName :  Name of the folder containing the JSON file to import (template). If the file is not found, the method will return a new instance of AJUI Button.
   * (text) (optional) templatePath : You can specify a path to retrieve the file otherwise, the component will search in the default folder located in the resources (.../Resources/AJUI_Button_Templates/).

## Return value

(object) instance of an AJUI Tip 

## Description

This method returns an object variable that represents an instance of AJUI Button. It contains all the properties and their default values as well as the formulas (member functions) to manipulate them. It is possible to pass an object as a parameter to it in order to import an AJUI Button template (JSON file). The object expects as properties:

## Example

```
  C_Object($myButton;$template_obj)
  C_String($path;$templateName)

  $template_obj:=New object("templateName";$templateName;"templatePath";$path)
  $myButton:=New AJUI_Button ($template_obj)
```
