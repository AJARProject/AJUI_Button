
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn1:=New AJUI_Button 
		Form:C1466.btn1.Name("btn1")
		Form:C1466.btn1.Composition("composite")
		Form:C1466.btn1.CompLinked(True:C214)
		Form:C1466.btn1.ColorToReplace("#434343")
		
		  //default
		Form:C1466.btn1.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
		Form:C1466.btn1.PictureHeight(AJUI_btn_default;20)
		Form:C1466.btn1.PictureWidth(AJUI_btn_default;20)
		Form:C1466.btn1.BGColor(AJUI_btn_default;"lightgray")
		Form:C1466.btn1.Label(AJUI_btn_default;"Padding 0")
		Form:C1466.btn1.FontColor(AJUI_btn_default;"black")
		Form:C1466.btn1.CompPicturePosition(AJUI_btn_default;"left")
		Form:C1466.btn1.CompPictSizeAllocation(AJUI_btn_default;30)
		Form:C1466.btn1.CompPadding(AJUI_btn_default;0)
		
		  //hover
		Form:C1466.btn1.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form:C1466.btn1.BGColor(AJUI_btn_active;"gray")
		Form:C1466.btn1.FontStyle(AJUI_btn_active;"bold")
		Form:C1466.btn1.FontColor(AJUI_btn_active;"white")
		Form:C1466.btn1.PictureHeight(AJUI_btn_active;30)
		Form:C1466.btn1.PictureWidth(AJUI_btn_active;30)
		Form:C1466.btn1.ReplacingColor(AJUI_btn_active;"white")
		
End case 

Form:C1466.btn1.Draw()