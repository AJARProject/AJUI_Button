<!--New AJUI_Tip ( {template_obj} ) -> AJUI Tip instance -->


## Description

This method returns an object variable that represents an instance of AJUI Tip. It contains all the properties and their default values as well as the formulas (member functions) to manipulate them. It is possible to pass an object as a parameter to it in order to import an AJUI_Tip template

```4d
  New AJUI_Tip ( {template} ) -> instance
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| template | object | in | Properties :<br> - (text) templateName :  Name of the folder containing the JSON file to import (template). If the file is not found, the method will return a new instance of AJUI BreadCrumb.<br> - (text) (optional) templatePath : You can specify a path to retrieve the file otherwise, the component will search in the default folder located in the resources (.../Resources/AJUI_Tip_Templates/). You can use "#" to designate the 4D resources folder in your path. |
| instance | object | out | instance of AJUI_Tip with all the member functions |


## Example

```4d
  C_Object($myTip;$template_obj)

  //load a template and set the tip with a blink animation
  $template_obj:=New object("templateName";$yourTemplateName;"templatePath";$yourPath)
  Form.tip:=New AJUI_Tip ($template_obj)
  
  Form.tip.TargetName("info")
  Form.tip.TipName("tipInfo")
  Form.tip.TipPosition("top")
  Form.tip.BackgroundColor("yellow")
  Form.tip.TipboxMaxWidth(150)
  Form.tip.TextLabel("Blink on set to 50%")
		
  Form.tip.BlinkNumber(3)
  Form.tip.BlinkDuration(1000)
  Form.tip.BlinkOn(50)
		
  Form.tip.Show()
  
```
