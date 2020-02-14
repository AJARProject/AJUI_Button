
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn7:=New AJUI_Button 
		Form:C1466.btn7.Name("btn7")
		Form:C1466.btn7.Composition("picture")
		
		  //default
		Form:C1466.btn7.PicturePath(AJUI_btn_default;"4D_v16_60px.png")
		Form:C1466.btn7.PictureHeight(AJUI_btn_default;120)
		Form:C1466.btn7.PictureWidth(AJUI_btn_default;100)
		Form:C1466.btn7.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form:C1466.btn7.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form:C1466.btn7.BGColor(AJUI_btn_active;"gray")
		
End case 

Form:C1466.btn7.Draw()