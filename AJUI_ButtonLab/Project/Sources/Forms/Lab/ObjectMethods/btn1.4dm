
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn1:=New AJUI_Button 
		Form:C1466.btn1.Name("btn1")
		
		  //default
		Form:C1466.btn1.BGColor(AJUI_btn_default;"white")
		Form:C1466.btn1.Label(AJUI_btn_default;"AJUI Button Lab")
		Form:C1466.btn1.FontColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn1.BorderSize(AJUI_btn_default;1)
		Form:C1466.btn1.BorderColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn1.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		
		  //hover
		
		Form:C1466.btn1.FontColor(AJUI_btn_hover;"white")
		Form:C1466.btn1.PicturePath(AJUI_btn_hover;"svg/si-glyph-dice-2.svg")
		Form:C1466.btn1.BGColor(AJUI_btn_hover;"#4791C7")
		
		
		
		  //active
		Form:C1466.btn1.PicturePath(AJUI_btn_active;"svg/si-glyph-dice-3.svg")
		Form:C1466.btn1.FontColor(AJUI_btn_active;"white")
		Form:C1466.btn1.BGColor(AJUI_btn_active;"#4388BB")
		
		  //disable
		Form:C1466.btn1.FontColor(AJUI_btn_disable;"white")
		Form:C1466.btn1.BorderColor(AJUI_btn_disable;"#D1D0D0")
		Form:C1466.btn1.BGColor(AJUI_btn_disable;"#4d9ad4:50")
		
		  //focus
		Form:C1466.btn1.BorderSize(AJUI_btn_focus;3)
		
		Form:C1466.currentBtn:=New object:C1471()
		Form:C1466.currentBtn:=OB Copy:C1225(Form:C1466.btn1)
		
End case 




Form:C1466.btn1.Draw()




