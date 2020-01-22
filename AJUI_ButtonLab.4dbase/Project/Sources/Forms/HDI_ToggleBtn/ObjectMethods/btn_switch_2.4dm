
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.toggle:=False:C215
		
		C_OBJECT:C1216($template_obj)
		
		  // Switch ON
		$template_obj:=New object:C1471("templateName";"switch_on_model_1")
		Form:C1466.btn3:=New AJUI_Button ($template_obj)
		Form:C1466.btn3.Name("btn_switch_2")
		
		  // Switch OFF
		$template_obj.templateName:="switch_off_model_1"
		Form:C1466.btn4:=New AJUI_Button ($template_obj)
		Form:C1466.btn4.Name("btn_switch_2")
		
		Form:C1466.btn_switch_2:=Form:C1466.btn3
		
	: (Form event code:C388=On Clicked:K2:4)
		
		Form:C1466.toggle:=Not:C34(Form:C1466.toggle)
		
		If (Form:C1466.toggle)
			Form:C1466.btn_switch_2:=Form:C1466.btn4
		Else 
			Form:C1466.btn_switch_2:=Form:C1466.btn3
		End if 
		
End case 


Form:C1466.btn_switch_2.Draw()