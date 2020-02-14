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


Form:C1466.tipSaveTemplateSubform:=New AJUI_Tip ()

  // ----------------------
  // Global
  // ----------------------
Form:C1466.tipSaveTemplateSubform.TipName("AJUI_Tip_form")
Form:C1466.tipSaveTemplateSubform.TipDuration(0)
Form:C1466.tipSaveTemplateSubform.AutoRebuild(False:C215)


  // ----------------------
  //Text
  // ----------------------
Form:C1466.tipSaveTemplateSubform.TextLabel("Lorem ipsum dolor sit amet.")
Form:C1466.tipSaveTemplateSubform.TextRotation("")
Form:C1466.tipSaveTemplateSubform.TextFontSize(11)
Form:C1466.tipSaveTemplateSubform.TextFontName("Arial,Helvetica,MS Sans Serif")
Form:C1466.tipSaveTemplateSubform.TextFontColor("#808080")
Form:C1466.tipSaveTemplateSubform.TextOpacity(100)


  // ----------------------
  // Target
  // ----------------------
Form:C1466.tipSaveTemplateSubform.TipPosition("bottom-center")
Form:C1466.tipSaveTemplateSubform.TargetName("btnSave")
Form:C1466.tipSaveTemplateSubform.TargetOffset(0)
Form:C1466.tipSaveTemplateSubform.TargetMargin(0)


  // ----------------------
  // Container
  // ----------------------
Form:C1466.tipSaveTemplateSubform.CornerRadius(5)
Form:C1466.tipSaveTemplateSubform.TipboxMaxWidth(0)
Form:C1466.tipSaveTemplateSubform.TipboxMaxHeight(0)
Form:C1466.tipSaveTemplateSubform.Padding(0)
Form:C1466.tipSaveTemplateSubform.BorderSize(3)
Form:C1466.tipSaveTemplateSubform.BorderColor("#808080")
Form:C1466.tipSaveTemplateSubform.BorderOpacity(100)
Form:C1466.tipSaveTemplateSubform.BackgroundColor("#C0C0C0")
Form:C1466.tipSaveTemplateSubform.BackgroundOpacity(100)
Form:C1466.tipSaveTemplateSubform.ActivateShadow(False:C215)
Form:C1466.tipSaveTemplateSubform.ShadowOffset(2)


  // ----------------------
  // Arrow
  // ----------------------
Form:C1466.tipSaveTemplateSubform.ArrowWidth(20)
Form:C1466.tipSaveTemplateSubform.ArrowHeight(10)
Form:C1466.tipSaveTemplateSubform.ArrowPosition("center")
Form:C1466.tipSaveTemplateSubform.ArrowOffset(10)


  // ----------------------
  // Close Box
  // ----------------------
Form:C1466.tipSaveTemplateSubform.CloseBoxDisplay(False:C215)
Form:C1466.tipSaveTemplateSubform.CloseBoxSize(5)
Form:C1466.tipSaveTemplateSubform.ActivateOnClickCB(False:C215)


  // ----------------------
  // SubForm
  // ----------------------
Form:C1466.tipSaveTemplateSubform.SubformName("Lab_saveTemp")

