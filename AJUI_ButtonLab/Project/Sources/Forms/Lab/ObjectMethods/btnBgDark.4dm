
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		$template_obj:=New object:C1471("templateName";"set background color")
		Form:C1466.btnBgDark:=New AJUI_Button ($template_obj)
		Form:C1466.btnBgDark.OnClick("Lab_setBgColor_btn";New object:C1471("value";0x0080;"setColorbtnBgOther";False:C215))
		Form:C1466.btnBgDark.Name("btnBgDark")
		  //default
		Form:C1466.btnBgDark.BGColor(AJUI_btn_default;"navy")
		
End case 

Form:C1466.btnBgDark.Draw()