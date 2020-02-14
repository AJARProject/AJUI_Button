
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn6:=New AJUI_Button 
		Form:C1466.btn6.Name("btn6")
		Form:C1466.btn6.Composition("picture")
		
		  //default
		Form:C1466.btn6.PicturePath(AJUI_btn_default;"4D_v16_60px.png")
		Form:C1466.btn6.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form:C1466.btn6.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form:C1466.btn6.BGColor(AJUI_btn_active;"gray")
		
End case 

Form:C1466.btn6.Draw()