
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		tip_bgSelectBgColorOther 
		
		$template_obj:=New object:C1471("templateName";"set background color")
		Form:C1466.btnBgOther:=New AJUI_Button ($template_obj)
		Form:C1466.btnBgOther.Name("btnBgOther")
		Form:C1466.btnBgOtherParams:=New object:C1471("value";3100495;"setColorbtnBgOther";True:C214)
		Form:C1466.btnBgOther.OnClick("Lab_setBgColor_btn";Form:C1466.btnBgOtherParams)
		  //default
		Form:C1466.btnBgOther.BGColor(AJUI_btn_default;"darkslategray")
		
	: (Form event code:C388=On Mouse Up:K2:58) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
		Lab_SetBgColorOther 
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		Form:C1466.tipBgColorOther.Show()
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipBgColorOther.Hide()
		
		  // https://doc.4d.com/4Dv17R5/4D/17-R5/SVG-Colors-RGB.302-4277201.en.html
End case 

Form:C1466.btnBgOther.Draw()