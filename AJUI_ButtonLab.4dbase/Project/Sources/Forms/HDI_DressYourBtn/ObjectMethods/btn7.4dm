
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn7:=New AJUI_Button 
		Form:C1466.btn7.Name("btn7")
		Form:C1466.btn7.Type("circle")
		
		  //default
		Form:C1466.btn7.BGColor(AJUI_btn_default;"palegreen")
		Form:C1466.btn7.Label(AJUI_btn_default;"BTN 7")
		Form:C1466.btn7.BorderSize(AJUI_btn_default;2)
		Form:C1466.btn7.FontColor(AJUI_btn_default;"blue")
		
		
		
End case 


Form:C1466.btn7.Draw()