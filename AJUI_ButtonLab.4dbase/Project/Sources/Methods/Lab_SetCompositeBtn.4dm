//%attributes = {}
  // Lab_SetCompositeBtn ( $btn ; $btnName  ) 
  //
  // $btn : (object) AJUI Button instance
  // $btnName : (text) (optional) name button
  //
  // Init Buttons for the form HDI_CompositePositionBtn

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 14.08.19, 09:42:28
	  // ----------------------------------------------------
	  // Method: Lab_SetCompositeBtn
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($1;$btn)
C_TEXT:C284($2;$btnName)

$btn:=($1)
$btnName:=$2

$btn.Name($btnName)
$btn.Composition("composite")
$btn.CompActiveSecondColor(True:C214)
$btn.Type("rectangle")
$btn.ColorToReplace("#434343")

  //default
$btn.PicturePath(AJUI_btn_default;"svg/si-glyph-call.svg")
$btn.PictureHeight(AJUI_btn_default;30)
$btn.PictureWidth(AJUI_btn_default;30)
$btn.BGColor(AJUI_btn_default;"white")
$btn.BGSecondaryColor(AJUI_btn_default;"#3498DB")
$btn.FontColor(AJUI_btn_default;"#3498DB")
$btn.FontStyle(AJUI_btn_default;"Bold")
$btn.BorderSize(AJUI_btn_default;3)
$btn.BorderColor(AJUI_btn_default;"#3498DB")

  //hover
$btn.BGColor(AJUI_btn_hover;"#A9DCFF")
$btn.BGSecondaryColor(AJUI_btn_hover;"#275DA3")
$btn.ReplacingColor(AJUI_btn_hover;"white")
$btn.FontColor(AJUI_btn_hover;"white")
$btn.FontStyle(AJUI_btn_hover;"Bold")
$btn.Label(AJUI_btn_hover;"On Hover")
$btn.BorderColor(AJUI_btn_hover;"#275DA3")

  //active
$btn.BGColor(AJUI_btn_active;"white")
$btn.ReplacingColor(AJUI_btn_active;"white")
$btn.Label(AJUI_btn_active;"On Click")
$btn.FontColor(AJUI_btn_active;"#D57C7C")
$btn.BorderColor(AJUI_btn_active;"#D57C7C")
$btn.BGSecondaryColor(AJUI_btn_active;"#D57C7C")