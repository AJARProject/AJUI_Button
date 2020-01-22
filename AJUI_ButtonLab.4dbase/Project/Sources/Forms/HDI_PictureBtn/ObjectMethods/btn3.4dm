
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn3:=New AJUI_Button 
		Form:C1466.btn3.Name("btn3")
		Form:C1466.btn3.Composition("picture")
		Form:C1466.btn3.ColorToReplace("#434343")
		
		  //default
		Form:C1466.btn3.PicturePath(AJUI_btn_default;"svg/si-glyph-dice-1.svg")
		Form:C1466.btn3.PictureHeight(AJUI_btn_default;80)
		Form:C1466.btn3.PictureWidth(AJUI_btn_default;80)
		Form:C1466.btn3.BGColor(AJUI_btn_default;"lightgrey")
		
		  //hover
		Form:C1466.btn3.BGColor(AJUI_btn_hover;"darkgrey")
		Form:C1466.btn3.PicturePath(AJUI_btn_hover;"svg/si-glyph-dice-2.svg")
		Form:C1466.btn3.PictureOpacity(AJUI_btn_hover;60)
		Form:C1466.btn3.ReplacingColor(AJUI_btn_hover;"white")
		
		  //active
		Form:C1466.btn3.BGColor(AJUI_btn_active;"grey")
		Form:C1466.btn3.PicturePath(AJUI_btn_active;"svg/si-glyph-dice-3.svg")
		Form:C1466.btn3.PictureOpacity(AJUI_btn_active;100)
		Form:C1466.btn3.ReplacingColor(AJUI_btn_active;"white")
End case 

Form:C1466.btn3.Draw()