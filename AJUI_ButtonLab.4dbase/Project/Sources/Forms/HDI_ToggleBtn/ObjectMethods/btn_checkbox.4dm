
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.toggle_checkbox:=False:C215
		
		C_OBJECT:C1216($template_obj)
		
		  // Checkbox ON
		$template_obj:=New object:C1471("templateName";"Checkbox-mac-on.json")
		Form:C1466.btn_checkbox_on:=New AJUI_Button ($template_obj)
		Form:C1466.btn_checkbox_on.Name("btn_checkbox")
		Form:C1466.btn_checkbox_on.Label(AJUI_btn_default;"Disable switch button")
		
		  // Checkbox OFF
		$template_obj.templateName:="Checkbox-mac-off.json"
		Form:C1466.btn_checkbox_off:=New AJUI_Button ($template_obj)
		Form:C1466.btn_checkbox_off.Name("btn_checkbox")
		Form:C1466.btn_checkbox_off.Label(AJUI_btn_default;"Disable switch button")
		
		Form:C1466.btn_checkbox:=Form:C1466.btn_checkbox_off
		
	: (Form event code:C388=On Clicked:K2:4)
		
		Form:C1466.toggle_checkbox:=Not:C34(Form:C1466.toggle_checkbox)
		
		If (Form:C1466.toggle_checkbox)
			Form:C1466.btn_checkbox:=Form:C1466.btn_checkbox_on
			Form:C1466.btn_switch_1.Enable(False:C215)
			Form:C1466.btn_switch_2.Enable(False:C215)
			Form:C1466.btn_switch_3.Enable(False:C215)
			Form:C1466.btn_switch_4.Enable(False:C215)
		Else 
			Form:C1466.btn_checkbox:=Form:C1466.btn_checkbox_off
			Form:C1466.btn_switch_1.Enable(True:C214)
			Form:C1466.btn_switch_2.Enable(True:C214)
			Form:C1466.btn_switch_3.Enable(True:C214)
			Form:C1466.btn_switch_4.Enable(True:C214)
		End if 
		
End case 


Form:C1466.btn_checkbox.Draw()