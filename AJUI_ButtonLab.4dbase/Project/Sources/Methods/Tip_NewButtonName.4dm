//%attributes = {}
  // Tip_NewButtonName (  ) 
  //
  // Init an AJUI Tip for the new template button

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:07:43
	  // ----------------------------------------------------
	  // Method: Tip_NewButtonName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


Form:C1466.tipNewTemplate:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form:C1466.tipNewTemplate.TipName("AJUI_Tip_form")
Form:C1466.tipNewTemplate.AutoRebuild(False:C215)


  // ----------------------
  //Text
  // ----------------------
Form:C1466.tipNewTemplate.TextLabel("Lorem ipsum dolor sit amet.")
Form:C1466.tipNewTemplate.TextRotation("")
Form:C1466.tipNewTemplate.TextFontSize(11)
Form:C1466.tipNewTemplate.TextFontName("Arial,Helvetica,MS Sans Serif")
Form:C1466.tipNewTemplate.TextFontColor("#808080")
Form:C1466.tipNewTemplate.TextOpacity(100)


  // ----------------------
  // Target
  // ----------------------
Form:C1466.tipNewTemplate.TipPosition("bottom-center")
Form:C1466.tipNewTemplate.TargetName("btnNew")
Form:C1466.tipNewTemplate.TargetOffset(0)
Form:C1466.tipNewTemplate.TargetMargin(0)


  // ----------------------
  // Container
  // ----------------------
Form:C1466.tipNewTemplate.CornerRadius(5)
Form:C1466.tipNewTemplate.TipboxMaxWidth(0)
Form:C1466.tipNewTemplate.TipboxMaxHeight(0)
Form:C1466.tipNewTemplate.Padding(0)
Form:C1466.tipNewTemplate.BorderSize(3)
Form:C1466.tipNewTemplate.BorderColor("#808080")
Form:C1466.tipNewTemplate.BorderOpacity(100)
Form:C1466.tipNewTemplate.BackgroundColor("#C0C0C0")
Form:C1466.tipNewTemplate.BackgroundOpacity(100)
Form:C1466.tipNewTemplate.ActivateShadow(False:C215)
Form:C1466.tipNewTemplate.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
Form:C1466.tipNewTemplate.ArrowWidth(20)
Form:C1466.tipNewTemplate.ArrowHeight(10)
Form:C1466.tipNewTemplate.ArrowPosition("center")
Form:C1466.tipNewTemplate.ArrowOffset(10)


  // ----------------------
  // Close Box
  // ----------------------
Form:C1466.tipNewTemplate.CloseBoxDisplay(False:C215)
Form:C1466.tipNewTemplate.CloseBoxSize(5)
Form:C1466.tipNewTemplate.ActivateOnClickCB(False:C215)


  // ----------------------
  // SubForm
  // ----------------------
Form:C1466.tipNewTemplate.SubformName("Lab_newNameInput")


