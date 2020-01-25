
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn2:=New AJUI_Button 
		Form:C1466.btn2.Name("btn2")
		Form:C1466.btn2.OnDoubleClick("onDoubleClick_cb")
		
		  //default
		Form:C1466.btn2.BGColor(AJUI_btn_default;"white")
		Form:C1466.btn2.Label(AJUI_btn_default;"Double Click")
		Form:C1466.btn2.FontColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn2.BorderSize(AJUI_btn_default;1)
		Form:C1466.btn2.BorderColor(AJUI_btn_default;"#3498DB")
		
		  //hover
		Form:C1466.btn2.BGColor(AJUI_btn_hover;"#3498DB")
		Form:C1466.btn2.FontColor(AJUI_btn_hover;"white")
		
		  //active
		Form:C1466.btn2.BGColor(AJUI_btn_active;"white")
		Form:C1466.btn2.Label(AJUI_btn_active;"Click in")
		
		
End case 


Form:C1466.btn2.Draw()