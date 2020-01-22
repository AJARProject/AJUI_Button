
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btn6:=New AJUI_Button 
		Form:C1466.btn6.Name("btn6")
		
		  //default
		Form:C1466.btn6.BGColor(AJUI_btn_default;"white")
		Form:C1466.btn6.Label(AJUI_btn_default;"AJUI Button Lab")
		Form:C1466.btn6.FontColor(AJUI_btn_default;"white")
		Form:C1466.btn6.BorderSize(AJUI_btn_default;1)
		Form:C1466.btn6.BorderColor(AJUI_btn_default;"#D1D0D0")
		Form:C1466.btn6.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		Form:C1466.btn6.BorderSize(AJUI_btn_default;3)
		
		
		
		Form:C1466.btn6.Enable(False:C215)
		
		
End case 


Form:C1466.btn6.Draw()