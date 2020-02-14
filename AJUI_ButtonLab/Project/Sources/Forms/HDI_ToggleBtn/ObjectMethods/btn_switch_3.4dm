
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.toggle:=False:C215
		
		C_OBJECT:C1216($template_obj)
		
		  // Switch ON
		$template_obj:=New object:C1471("templateName";"switch_on_model_2.json")
		Form:C1466.btn5:=New AJUI_Button ($template_obj)
		Form:C1466.btn5.Name("btn_switch_3")
		
		  // Switch OFF
		$template_obj.templateName:="switch_off_model_2.json"
		Form:C1466.btn6:=New AJUI_Button ($template_obj)
		Form:C1466.btn6.Name("btn_switch_3")
		
		Form:C1466.btn_switch_3:=Form:C1466.btn5
		
	: (Form event code:C388=On Clicked:K2:4)
		
		Form:C1466.toggle:=Not:C34(Form:C1466.toggle)
		
		If (Form:C1466.toggle)
			Form:C1466.btn_switch_3:=Form:C1466.btn6
		Else 
			Form:C1466.btn_switch_3:=Form:C1466.btn5
		End if 
		
End case 


Form:C1466.btn_switch_3.Draw()