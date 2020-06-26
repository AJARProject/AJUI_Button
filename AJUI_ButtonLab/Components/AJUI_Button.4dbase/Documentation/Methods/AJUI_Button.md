<!-- AJUI_Button.new ( {template} ) -> instance of Button class  -->


## Description

Exposes the Button class at the host base. Replace New AJUI_Button since V18R3. It is possible to pass an object as a parameter to it in order to import an AJUI Button template (JSON file). 


```4d
  AJUI_Button.new ( {template} ) -> instance
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| template | object | in | Properties :<br> - (text) templateName :  Name of the folder containing the JSON file to import (template). If the file is not found, the method will return a new instance of AJUI Button.<br> - (text) (optional) templatePath : You can specify a path to retrieve the file otherwise, the component will search in the default folder located in the resources (.../Resources/AJUI_Button_Templates/). |
| instance | object | out | instance of AJUI_Button with all the member functions |

## Example

```4d
  Case of 
	: (Form event code=On Load)
	    C_Object($myButton;$template_obj)

        $template_obj:=New object("templateName";Form.templateName;"templatePath";Form.templatePath)
		
		Form.btn:=AJUI_Button.new($template_obj) 
		Form.btn.Name("btn3")
		
		  //default
		Form.btn.BGColor(AJUI_btn_default;"lightgrey")
		Form.btn.Label(AJUI_btn_default;"BTN 3")
		Form.btn.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form.btn.BGColor(AJUI_btn_hover;"darkgrey")
		Form.btn.Label(AJUI_btn_hover;"On Hover")
		
		  //active
		Form.btn.BGColor(AJUI_btn_active;"grey")
		Form.btn.Label(AJUI_btn_active;"On Click")
  End case 

  Form.btn.Draw()
  
```