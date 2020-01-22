//%attributes = {}
  // tip_bgSelectBgColorOther (  ) 
  //
  // Init an AJUI Button to indicate how to open the color picker for the button who select a background color

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:08:53
	  // ----------------------------------------------------
	  // Method: tip_bgSelectBgColorOther
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


Form:C1466.tipBgColorOther:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form:C1466.tipBgColorOther.TipName("AJUI_Tip_sf")
Form:C1466.tipBgColorOther.TipDuration(5000)
Form:C1466.tipBgColorOther.AutoRebuild(False:C215)


  // ----------------------
  //Text
  // ----------------------
Form:C1466.tipBgColorOther.TextLabel("Alt+Clic (Windows) or Option+Clic (Mac) to display the colorPicker.")
Form:C1466.tipBgColorOther.TextRotation("")
Form:C1466.tipBgColorOther.TextFontSize(13)
Form:C1466.tipBgColorOther.TextFontName("Arial,Helvetica,MS Sans Serif")
Form:C1466.tipBgColorOther.TextFontColor("#FFFFFF")
Form:C1466.tipBgColorOther.TextOpacity(100)


  // ----------------------
  // Target
  // ----------------------
Form:C1466.tipBgColorOther.TipPosition("bottom")
Form:C1466.tipBgColorOther.TargetName("btnBgOther")
Form:C1466.tipBgColorOther.TargetOffset(0)
Form:C1466.tipBgColorOther.TargetMargin(0)


  // ----------------------
  // Container
  // ----------------------
Form:C1466.tipBgColorOther.CornerRadius(5)
Form:C1466.tipBgColorOther.TipboxMaxWidth(131)
Form:C1466.tipBgColorOther.TipboxMaxHeight(0)
Form:C1466.tipBgColorOther.Padding(10)
Form:C1466.tipBgColorOther.BorderSize(2)
Form:C1466.tipBgColorOther.BorderColor("#C0C0C0")
Form:C1466.tipBgColorOther.BorderOpacity(100)
Form:C1466.tipBgColorOther.BackgroundColor("#0000FF")
Form:C1466.tipBgColorOther.BackgroundOpacity(72)
Form:C1466.tipBgColorOther.ActivateShadow(False:C215)
Form:C1466.tipBgColorOther.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
Form:C1466.tipBgColorOther.ArrowWidth(20)
Form:C1466.tipBgColorOther.ArrowHeight(10)
Form:C1466.tipBgColorOther.ArrowPosition("middle")
Form:C1466.tipBgColorOther.ArrowOffset(10)


  // ----------------------
  // Close Box
  // ----------------------
Form:C1466.tipBgColorOther.CloseBoxDisplay(False:C215)
Form:C1466.tipBgColorOther.CloseBoxSize(5)
Form:C1466.tipBgColorOther.ActivateOnClickCB(False:C215)


  // ----------------------
  // SubForm
  // ----------------------
Form:C1466.tipBgColorOther.SubformName("")


  // ----------------------
  // Animation
  // ----------------------
Form:C1466.tipBgColorOther.ActivateAnimation(True:C214)
Form:C1466.tipBgColorOther.AnimationRefresh(20)


  // ----------------------
  // Blink
  // ----------------------
Form:C1466.tipBgColorOther.BlinkNumber(0)
Form:C1466.tipBgColorOther.BlinkDuration(1000)
Form:C1466.tipBgColorOther.BlinkOn(50)


  // ----------------------
  // Jump
  // ----------------------
Form:C1466.tipBgColorOther.JumpNumber(0)
Form:C1466.tipBgColorOther.JumpOn(50)
Form:C1466.tipBgColorOther.JumpDuration(1000)
Form:C1466.tipBgColorOther.JumpOffset(20)


  // ----------------------
  // Fade effect
  // ----------------------
Form:C1466.tipBgColorOther.ActivateFadeIn(True:C214)
Form:C1466.tipBgColorOther.ActivateFadeOut(True:C214)
Form:C1466.tipBgColorOther.TimerFadeIn(800)
Form:C1466.tipBgColorOther.TimerFadeOut(500)