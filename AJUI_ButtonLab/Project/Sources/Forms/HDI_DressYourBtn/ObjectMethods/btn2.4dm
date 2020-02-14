
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn2:=New AJUI_Button 
		Form:C1466.btn2.Name("btn2")
		
		  //default
		Form:C1466.btn2.BGColor(AJUI_btn_default;"lightgrey")
		Form:C1466.btn2.Label(AJUI_btn_default;"BTN 2")
		Form:C1466.btn2.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form:C1466.btn2.BGColor(AJUI_btn_hover;"darkgrey")
		Form:C1466.btn2.Label(AJUI_btn_hover;"On Hover")
		
		
		
End case 


Form:C1466.btn2.Draw()