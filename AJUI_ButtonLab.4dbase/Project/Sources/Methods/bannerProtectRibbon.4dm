//%attributes = {}
  // bannerProtectRibbon (  ) 
  //
  //
  // Init banner 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.08.19, 14:38:40
	  // ----------------------------------------------------
	  // Method: bannerProtectRibbon
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

Form:C1466.btnProtectBanner:=New AJUI_Banner 
Form:C1466.btnProtectBanner.BannerType("cornerRibbon")
Form:C1466.btnProtectBanner.BannerName("protect")
Form:C1466.btnProtectBanner.Message("Locked")
Form:C1466.btnProtectBanner.BannerPosition("bottom-left")
Form:C1466.btnProtectBanner.TextColor("White")
Form:C1466.btnProtectBanner.TextFontSize(50)
Form:C1466.btnProtectBanner.TextFontWeight("bold")
Form:C1466.btnProtectBanner.BannerBGColor("red:70")
Form:C1466.btnProtectBanner.BorderColor("red")
Form:C1466.btnProtectBanner.BorderSize(2)

OBJECT GET COORDINATES:C663(*;"AJUI_Banner";$left;$top;$right;$bottom)
Form:C1466.btnProtectBanner.BannerHeight(200)
Form:C1466.btnProtectBanner.BannerWidth(600)