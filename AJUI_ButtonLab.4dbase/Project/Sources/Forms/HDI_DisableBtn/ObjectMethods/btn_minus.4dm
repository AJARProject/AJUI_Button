
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn_minus:=New AJUI_Button 
		Form:C1466.btn_minus.Name("btn_minus")
		Form:C1466.btn_minus.Composition("picture")
		Form:C1466.btn_minus.OnClick("minusOne_cb")
		Form:C1466.btn_minus.ColorToReplace("#434343")
		
		  //default
		Form:C1466.btn_minus.PicturePath(AJUI_btn_default;"svg/si-glyph-arrow-thick-down.svg")
		Form:C1466.btn_minus.PictureHeight(AJUI_btn_default;40)
		Form:C1466.btn_minus.PictureWidth(AJUI_btn_default;40)
		Form:C1466.btn_minus.ReplacingColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn_minus.BGColor(AJUI_btn_default;"white")
		Form:C1466.btn_minus.BorderSize(AJUI_btn_default;3)
		Form:C1466.btn_minus.BorderColor(AJUI_btn_default;"#3498DB")
		
		  //hover
		Form:C1466.btn_minus.BGColor(AJUI_btn_hover;"#3498DB")
		Form:C1466.btn_minus.ReplacingColor(AJUI_btn_hover;"#FFFFFF")
		
		  //active
		Form:C1466.btn_minus.BGColor(AJUI_btn_active;"#275DA3")
		Form:C1466.btn_minus.BorderColor(AJUI_btn_active;"#275DA3")
		Form:C1466.btn_minus.PicturePath(AJUI_btn_active;"svg/si-glyph-arrow-thick-down-white.svg")
		
		  //disable
		Form:C1466.btn_minus.BGColor(AJUI_btn_disable;"#CBCBCB")
		Form:C1466.btn_minus.BorderColor(AJUI_btn_disable;"#CBCBCB")
		Form:C1466.btn_minus.PicturePath(AJUI_btn_disable;"svg/si-glyph-arrow-thick-down-white.svg")
		
		
End case 

If (Form:C1466.number<=1) & (Form event code:C388=On Mouse Up:K2:58)
	Form:C1466.btn_minus.Enable(False:C215)
End if 

Form:C1466.btn_minus.Draw()