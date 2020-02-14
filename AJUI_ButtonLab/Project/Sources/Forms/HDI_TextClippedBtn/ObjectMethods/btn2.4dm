
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn2:=New AJUI_Button 
		Form:C1466.btn2.Name("btn2")
		Form:C1466.btn2.Composition("composite")
		Form:C1466.btn2.CompActiveSecondColor(True:C214)
		
		
		  //default
		Form:C1466.btn2.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
		Form:C1466.btn2.PictureHeight(AJUI_btn_default;30)
		Form:C1466.btn2.PictureWidth(AJUI_btn_default;30)
		Form:C1466.btn2.BGColor(AJUI_btn_default;"lightgray")
		Form:C1466.btn2.BGSecondaryColor(AJUI_btn_default;"salmon")
		Form:C1466.btn2.CornerRadius(AJUI_btn_default;15)
		Form:C1466.btn2.Label(AJUI_btn_default;"Text clipped when it's too long")
		Form:C1466.btn2.FontColor(AJUI_btn_default;"black")
		Form:C1466.btn2.CompPicturePosition(AJUI_btn_default;"left")
		Form:C1466.btn2.CompPictSizeAllocation(AJUI_btn_default;30)
		
		  //hover
		Form:C1466.btn2.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form:C1466.btn2.BGColor(AJUI_btn_active;"gray")
		
		
		
		
		
End case 



Form:C1466.btn2.Draw()