
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btn3:=New AJUI_Button 
		Form:C1466.btn3.Name("btn3")
		
		  //default
		Form:C1466.btn3.BGColor(AJUI_btn_default;"lightgrey")
		Form:C1466.btn3.Label(AJUI_btn_default;"BTN 3")
		Form:C1466.btn3.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form:C1466.btn3.BGColor(AJUI_btn_hover;"darkgrey")
		Form:C1466.btn3.Label(AJUI_btn_hover;"On Hover")
		
		  //active
		Form:C1466.btn3.BGColor(AJUI_btn_active;"grey")
		Form:C1466.btn3.Label(AJUI_btn_active;"On Click")
		
		
End case 


Form:C1466.btn3.Draw()