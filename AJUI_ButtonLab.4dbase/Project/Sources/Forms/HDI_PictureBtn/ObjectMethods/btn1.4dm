
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn1:=New AJUI_Button 
		Form:C1466.btn1.Name("btn1")
		Form:C1466.btn1.Composition("picture")
		
		  //default
		Form:C1466.btn1.PicturePath(AJUI_btn_default;"4D_V16_596px.png")
		Form:C1466.btn1.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form:C1466.btn1.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form:C1466.btn1.BGColor(AJUI_btn_active;"gray")
		
End case 

Form:C1466.btn1.Draw()