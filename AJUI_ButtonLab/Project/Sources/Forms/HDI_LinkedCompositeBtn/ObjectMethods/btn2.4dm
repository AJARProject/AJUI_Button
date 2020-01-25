
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn2:=New AJUI_Button 
		Form:C1466.btn2.Name("btn2")
		Form:C1466.btn2.Composition("composite")
		Form:C1466.btn2.CompLinked(True:C214)
		Form:C1466.btn2.ColorToReplace("#434343")
		
		  //default
		Form:C1466.btn2.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
		Form:C1466.btn2.PictureHeight(AJUI_btn_default;20)
		Form:C1466.btn2.PictureWidth(AJUI_btn_default;20)
		Form:C1466.btn2.BGColor(AJUI_btn_default;"lightgray")
		Form:C1466.btn2.Label(AJUI_btn_default;"Padding 10")
		Form:C1466.btn2.FontColor(AJUI_btn_default;"black")
		Form:C1466.btn2.CompPicturePosition(AJUI_btn_default;"left")
		Form:C1466.btn2.CompPictSizeAllocation(AJUI_btn_default;30)
		Form:C1466.btn2.CompPadding(AJUI_btn_default;10)
		
		  //hover
		Form:C1466.btn2.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form:C1466.btn2.BGColor(AJUI_btn_active;"gray")
		Form:C1466.btn2.FontStyle(AJUI_btn_active;"bold")
		Form:C1466.btn2.FontColor(AJUI_btn_active;"white")
		Form:C1466.btn2.PictureHeight(AJUI_btn_active;30)
		Form:C1466.btn2.PictureWidth(AJUI_btn_active;30)
		Form:C1466.btn2.ReplacingColor(AJUI_btn_active;"white")
		
End case 

Form:C1466.btn2.Draw()