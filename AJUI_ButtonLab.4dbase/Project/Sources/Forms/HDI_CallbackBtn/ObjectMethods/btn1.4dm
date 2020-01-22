
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn1:=New AJUI_Button 
		Form:C1466.btn1.Name("btn1")
		Form:C1466.btn1.OnClick("onClick_cb")
		
		  //default
		Form:C1466.btn1.BGColor(AJUI_btn_default;"white")
		Form:C1466.btn1.Label(AJUI_btn_default;"Click")
		Form:C1466.btn1.FontColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn1.BorderSize(AJUI_btn_default;1)
		Form:C1466.btn1.BorderColor(AJUI_btn_default;"#3498DB")
		
		  //hover
		Form:C1466.btn1.BGColor(AJUI_btn_hover;"#3498DB")
		Form:C1466.btn1.FontColor(AJUI_btn_hover;"white")
		
		  //active
		Form:C1466.btn1.BGColor(AJUI_btn_active;"white")
		Form:C1466.btn1.Label(AJUI_btn_active;"Click in")
		
		
End case 


Form:C1466.btn1.Draw()