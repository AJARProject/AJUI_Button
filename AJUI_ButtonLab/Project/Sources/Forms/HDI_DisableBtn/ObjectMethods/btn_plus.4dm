
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn_plus:=New AJUI_Button 
		Form:C1466.btn_plus.Name("btn_plus")
		Form:C1466.btn_plus.Composition("picture")
		Form:C1466.btn_plus.OnClick("AddOne_cb")
		Form:C1466.btn_plus.ColorToReplace("#434343")
		
		  //default
		Form:C1466.btn_plus.PicturePath(AJUI_btn_default;"svg/si-glyph-arrow-thick-up.svg")
		Form:C1466.btn_plus.PictureHeight(AJUI_btn_default;40)
		Form:C1466.btn_plus.PictureWidth(AJUI_btn_default;40)
		Form:C1466.btn_plus.ReplacingColor(AJUI_btn_default;"#3498DB")
		Form:C1466.btn_plus.BGColor(AJUI_btn_default;"white")
		Form:C1466.btn_plus.BorderSize(AJUI_btn_default;3)
		Form:C1466.btn_plus.BorderColor(AJUI_btn_default;"#3498DB")
		
		  //hover
		Form:C1466.btn_plus.BGColor(AJUI_btn_hover;"#3498DB")
		Form:C1466.btn_plus.ReplacingColor(AJUI_btn_hover;"#FFFFFF")
		
		  //active
		Form:C1466.btn_plus.BGColor(AJUI_btn_active;"#275DA3")
		Form:C1466.btn_plus.BorderColor(AJUI_btn_active;"#275DA3")
		Form:C1466.btn_plus.PicturePath(AJUI_btn_active;"svg/si-glyph-arrow-thick-up-white.svg")
		
		  //disable
		Form:C1466.btn_plus.BGColor(AJUI_btn_disable;"#CBCBCB")
		Form:C1466.btn_plus.BorderColor(AJUI_btn_disable;"#CBCBCB")
		Form:C1466.btn_plus.PicturePath(AJUI_btn_disable;"svg/si-glyph-arrow-thick-up-white.svg")
		
		Form:C1466.btn_plus.Enable(False:C215)  // to be set related to the initial value
		
End case 

If (Form:C1466.number>=4) & (Form event code:C388=On Mouse Up:K2:58)
	Form:C1466.btn_plus.Enable(False:C215)
End if 

Form:C1466.btn_plus.Draw()