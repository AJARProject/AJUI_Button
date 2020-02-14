//%attributes = {}
  // TLoc_TipSubform_init ( $targetName  ) -> return
  //
  // $targetName : (text) tip target
  //
  // Init Tip for the template location settings subform

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 13.11.19, 14:11:19
	  // ----------------------------------------------------
	  // Method: TLoc_TipSubform_init
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$targetName)

$targetName:=$1


Form:C1466.tLocTip:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form:C1466.tLocTip.TipName("tLocTip")
Form:C1466.tLocTip.AutoRebuild(False:C215)



  // ----------------------
  // Target
  // ----------------------
Form:C1466.tLocTip.TipPosition("right-top")
Form:C1466.tLocTip.TargetName($targetName)
Form:C1466.tLocTip.TargetOffset(-18)
Form:C1466.tLocTip.TargetMargin(0)

  // ----------------------
  // Container
  // ----------------------
Form:C1466.tLocTip.CornerRadius(5)
Form:C1466.tLocTip.TipboxMaxWidth(0)
Form:C1466.tLocTip.TipboxMaxHeight(0)
Form:C1466.tLocTip.Padding(0)
Form:C1466.tLocTip.BorderSize(1)
Form:C1466.tLocTip.BorderColor("gray")
Form:C1466.tLocTip.BorderOpacity(100)
Form:C1466.tLocTip.BackgroundColor("lightblue:60")
Form:C1466.tLocTip.BackgroundOpacity(100)
Form:C1466.tLocTip.ActivateShadow(False:C215)
Form:C1466.tLocTip.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
Form:C1466.tLocTip.ArrowWidth(20)
Form:C1466.tLocTip.ArrowHeight(10)
Form:C1466.tLocTip.ArrowOffset(10)


  // ----------------------
  // Close Box
  // ----------------------
Form:C1466.tLocTip.CloseBoxDisplay(False:C215)


  // ----------------------
  // SubForm
  // ----------------------
Form:C1466.tLocTip.SubformName("templateLocationSettings")



