
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		$template_obj:=New object:C1471("templateName";"set background color")
		Form:C1466.btnBgWhite:=New AJUI_Button ($template_obj)
		Form:C1466.btnBgWhite.OnClick("Lab_setBgColor_btn";New object:C1471("value";0x00FFFFFF;"setColorbtnBgOther";False:C215))
		Form:C1466.btnBgWhite.Name("btnBgWhite")
		
		  //default
		Form:C1466.btnBgWhite.BGColor(AJUI_btn_default;"white")
		
End case 

Form:C1466.btnBgWhite.Draw()