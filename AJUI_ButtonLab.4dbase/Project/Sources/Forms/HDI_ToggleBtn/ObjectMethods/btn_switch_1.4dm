
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.toggle:=False:C215
		
		C_OBJECT:C1216($template_obj)
		
		  // Switch ON
		$template_obj:=New object:C1471("templateName";"switch_on.json")
		Form:C1466.btn1:=New AJUI_Button ($template_obj)
		Form:C1466.btn1.Name("btn_switch_1")
		
		  // Switch OFF
		$template_obj.templateName:="switch_off.json"
		Form:C1466.btn2:=New AJUI_Button ($template_obj)
		Form:C1466.btn2.Name("btn_switch_1")
		
		Form:C1466.btn_switch_1:=Form:C1466.btn1
		
	: (Form event code:C388=On Clicked:K2:4)
		
		Form:C1466.toggle:=Not:C34(Form:C1466.toggle)
		
		If (Form:C1466.toggle)
			Form:C1466.btn_switch_1:=Form:C1466.btn2
		Else 
			Form:C1466.btn_switch_1:=Form:C1466.btn1
		End if 
		
End case 


Form:C1466.btn_switch_1.Draw()