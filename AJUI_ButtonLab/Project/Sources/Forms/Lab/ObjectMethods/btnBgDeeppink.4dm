
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		$template_obj:=New object:C1471("templateName";"set background color")
		Form:C1466.btnBgDeeppink:=New AJUI_Button ($template_obj)
		Form:C1466.btnBgDeeppink.OnClick("Lab_setBgColor_btn";New object:C1471("value";0x00FF1493;"setColorbtnBgOther";False:C215))
		Form:C1466.btnBgDeeppink.Name("btnBgDeeppink")
		
		  //default
		Form:C1466.btnBgDeeppink.BGColor(AJUI_btn_default;"deeppink")
		
End case 

Form:C1466.btnBgDeeppink.Draw()