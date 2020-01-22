
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn2:=New AJUI_Button 
		Form:C1466.btn2.Name("btn2")
		
		  //default
		Form:C1466.btn2.BGColor(AJUI_btn_default;"white")
		Form:C1466.btn2.Label(AJUI_btn_default;"AJUI Button Lab")
		Form:C1466.btn2.FontColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn2.BorderSize(AJUI_btn_default;1)
		Form:C1466.btn2.BorderColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn2.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		
		
		
		
End case 


Form:C1466.btn2.Draw()