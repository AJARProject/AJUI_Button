
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn3:=New AJUI_Button 
		Form:C1466.btn3.Name("btn3")
		
		  //default
		Form:C1466.btn3.Label(AJUI_btn_default;"AJUI Button Lab")
		Form:C1466.btn3.FontColor(AJUI_btn_default;"white")
		Form:C1466.btn3.BorderSize(AJUI_btn_default;1)
		Form:C1466.btn3.BorderColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn3.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-2.svg")
		Form:C1466.btn3.BGColor(AJUI_btn_default;"#4791C7")
		
		
		
		
		
		
End case 


Form:C1466.btn3.Draw()