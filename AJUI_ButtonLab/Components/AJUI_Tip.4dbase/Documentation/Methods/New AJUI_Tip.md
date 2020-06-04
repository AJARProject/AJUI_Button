<!--New AJUI_Tip ( {template_obj} ) -> AJUI Tip instance -->

# New AJUI_Tip

## Parameters

 *  (object) (optional) template :
   * (text) templateName : Corresponds to the name of the JSON file to import (template). If the file is not found, the method will return a new instance of AJUI Tip.
   * (text) (optional) templatePath : You can specify a path to retrieve the file otherwise, the component will search in the default folder located in the resources 

## Return value

(object) instance of an AJUI Tip 

## Description

This method returns an object variable that represents an instance of AJUI Tip. It contains all the properties and their default values as well as the formulas (member functions) to manipulate them. It is possible to pass an object as a parameter to it in order to import an AJUI 

## Example

```
  C_Object($myTip;$template_obj)
  C_String($path;$templateName)

  $template_obj:=New object("templateName";$templateName;"templatePath";$path)
  $myTip:=New AJUI_Tip ($template_obj)
```
