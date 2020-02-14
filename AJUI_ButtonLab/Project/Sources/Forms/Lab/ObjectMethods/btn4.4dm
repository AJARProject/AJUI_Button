
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn4:=New AJUI_Button 
		Form:C1466.btn4.Name("btn4")
		
		  //default
		Form:C1466.btn4.BGColor(AJUI_btn_default;"#4388BB")
		Form:C1466.btn4.Label(AJUI_btn_default;"AJUI Button Lab")
		Form:C1466.btn4.FontColor(AJUI_btn_default;"white")
		Form:C1466.btn4.BorderSize(AJUI_btn_default;1)
		Form:C1466.btn4.BorderColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn4.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-3.svg")
		
		
		
		
		
		
End case 


Form:C1466.btn4.Draw()