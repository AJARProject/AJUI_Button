
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btn5:=New AJUI_Button 
		Form:C1466.btn5.Name("btn5")
		
		  //default
		Form:C1466.btn5.BGColor(AJUI_btn_disable;"#4d9ad4:50")
		Form:C1466.btn5.Label(AJUI_btn_default;"AJUI Button Lab")
		Form:C1466.btn5.FontColor(AJUI_btn_default;"white")
		Form:C1466.btn5.BorderSize(AJUI_btn_default;1)
		Form:C1466.btn5.BorderColor(AJUI_btn_default;"#D1D0D0")
		Form:C1466.btn5.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		
		
		
		Form:C1466.btn5.Enable(False:C215)
		
		
End case 


Form:C1466.btn5.Draw()