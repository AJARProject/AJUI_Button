
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.toggle:=False:C215
		
		C_OBJECT:C1216($template_obj)
		
		  // Switch ON
		$template_obj:=New object:C1471("templateName";"switch_on_custom.json")
		Form:C1466.btn7:=New AJUI_Button ($template_obj)
		Form:C1466.btn7.Name("btn_switch_4")
		
		  // Switch OFF
		$template_obj.templateName:="switch_off_custom.json"
		Form:C1466.btn8:=New AJUI_Button ($template_obj)
		Form:C1466.btn8.Name("btn_switch_4")
		
		Form:C1466.btn_switch_4:=Form:C1466.btn7
		
	: (Form event code:C388=On Clicked:K2:4)
		
		Form:C1466.toggle:=Not:C34(Form:C1466.toggle)
		
		If (Form:C1466.toggle)
			Form:C1466.btn_switch_4:=Form:C1466.btn8
		Else 
			Form:C1466.btn_switch_4:=Form:C1466.btn7
		End if 
		
End case 


Form:C1466.btn_switch_4.Draw()