
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn1:=New AJUI_Button 
		Form:C1466.btn1.Name("btn1")
		Form:C1466.btn1.Composition("text")
		
		
		  //default
		Form:C1466.btn1.BGColor(AJUI_btn_default;"lightgray")
		Form:C1466.btn1.Label(AJUI_btn_default;"Text clipped when it's too long")
		Form:C1466.btn1.FontColor(AJUI_btn_default;"black")
		Form:C1466.btn1.CornerRadius(AJUI_btn_default;15)
		
		  //hover
		Form:C1466.btn1.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form:C1466.btn1.BGColor(AJUI_btn_active;"gray")
		
		
		
		
End case 



Form:C1466.btn1.Draw()