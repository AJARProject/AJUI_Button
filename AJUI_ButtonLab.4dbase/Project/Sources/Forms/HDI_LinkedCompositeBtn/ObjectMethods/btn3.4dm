
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn3:=New AJUI_Button 
		Form:C1466.btn3.Name("btn3")
		Form:C1466.btn3.Composition("composite")
		Form:C1466.btn3.CompLinked(True:C214)
		Form:C1466.btn3.ColorToReplace("#434343")
		
		  //default
		Form:C1466.btn3.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
		Form:C1466.btn3.PictureHeight(AJUI_btn_default;20)
		Form:C1466.btn3.PictureWidth(AJUI_btn_default;20)
		Form:C1466.btn3.BGColor(AJUI_btn_default;"lightgray")
		Form:C1466.btn3.Label(AJUI_btn_default;"Padding 20")
		Form:C1466.btn3.FontColor(AJUI_btn_default;"black")
		Form:C1466.btn3.CompPicturePosition(AJUI_btn_default;"left")
		Form:C1466.btn3.CompPictSizeAllocation(AJUI_btn_default;30)
		Form:C1466.btn3.CompPadding(AJUI_btn_default;20)
		Form:C1466.btn3.ReplacingColor(AJUI_btn_active;"#434343")
		
		  //hover
		Form:C1466.btn3.BGColor(AJUI_btn_hover;"darkgray")
		
		  //active
		Form:C1466.btn3.BGColor(AJUI_btn_active;"gray")
		Form:C1466.btn3.FontStyle(AJUI_btn_active;"bold")
		Form:C1466.btn3.FontColor(AJUI_btn_active;"white")
		Form:C1466.btn3.PictureHeight(AJUI_btn_active;30)
		Form:C1466.btn3.PictureWidth(AJUI_btn_active;30)
		Form:C1466.btn3.ReplacingColor(AJUI_btn_active;"white")
		
End case 

Form:C1466.btn3.Draw()