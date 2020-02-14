  // Ratio = rapport à la largeur et à la hauteur de l'image avec
  // comme valeur max la taille du bouton

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btn9:=New AJUI_Button 
		Form:C1466.btn9.Name("btn9")
		Form:C1466.btn9.Composition("picture")
		
		  //default
		Form:C1466.btn9.PicturePath(AJUI_btn_default;"4D_v16_60px.png")
		Form:C1466.btn9.PictureRatio(AJUI_btn_default;0.15)
		Form:C1466.btn9.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form:C1466.btn9.BGColor(AJUI_btn_hover;"darkgrey")
		
		  //active
		Form:C1466.btn9.BGColor(AJUI_btn_active;"gray")
		
End case 

Form:C1466.btn9.Draw()