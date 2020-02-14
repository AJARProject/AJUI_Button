
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn1:=New AJUI_Button 
		Form:C1466.btn1.Name("btn1")
		
		  //default
		Form:C1466.btn1.BGColor(AJUI_btn_default;"lightgrey")
		Form:C1466.btn1.Label(AJUI_btn_default;"BTN 1")
		Form:C1466.btn1.BorderSize(AJUI_btn_default;2)
		
		
		
End case 


Form:C1466.btn1.Draw()