$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.subInfoTip:=New AJUI_Tip 
		
		  // ----------------------
		  // Global
		  // ----------------------
		Form:C1466.subInfoTip.TipName("AJUI_subInfoTip")
		Form:C1466.subInfoTip.AutoRebuild(False:C215)
		
		
		  // ----------------------
		  //Text
		  // ----------------------
		Form:C1466.subInfoTip.TextLabel("")
		Form:C1466.subInfoTip.TextFontColor("blue")
		Form:C1466.subInfoTip.TextFontSize(16)
		
		
		
		  // ----------------------
		  // Target
		  // ----------------------
		Form:C1466.subInfoTip.TipPosition("right")
		Form:C1466.subInfoTip.TargetName("infoTip")
		Form:C1466.subInfoTip.TargetMargin(0)
		
		
		
		
		  // ----------------------
		  // Container
		  // ----------------------
		Form:C1466.subInfoTip.CornerRadius(0)
		Form:C1466.subInfoTip.TipboxMaxWidth(250)
		Form:C1466.subInfoTip.TipboxMaxHeight(0)
		Form:C1466.subInfoTip.Padding(10)
		Form:C1466.subInfoTip.BorderSize(0)
		Form:C1466.subInfoTip.BorderColor("lightblue")
		Form:C1466.subInfoTip.BackgroundColor("lightblue:60")
		Form:C1466.subInfoTip.ActivateShadow(False:C215)
		
		
		  // ----------------------
		  // Arrow
		  // ----------------------
		Form:C1466.subInfoTip.ArrowWidth(0)
		Form:C1466.subInfoTip.ArrowHeight(0)
		
		
End case 
