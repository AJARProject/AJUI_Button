C_POINTER:C301($templates_ptr)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnReset:=newTemplateButton 
		Form:C1466.btnReset.Name("btnReset")
		Form:C1466.btnReset.Label(AJUI_btn_default;"Reset")
		Form:C1466.btnReset.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994435---ban-banned-block-disabled-stop.svg")
		
		Form:C1466.tipReset:=tip_templatesButtons ("btnReset";"Reset states exceptions")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnReset"))
			Form:C1466.tipReset.TextLabel("Reset states exceptions")
			Form:C1466.tipReset.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipReset.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
		
	: (Form event code:C388=On Clicked:K2:4)
		  //reset states
		Form:C1466.btn1.ResetAllStates()
		
		Form:C1466.btnSave.Enable(True:C214)
		Form:C1466.btnSave.Draw()
		
		formulasGetValues 
		formulasSetValues 
		REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
		redrawBtn 
End case 

Form:C1466.btnReset.Draw()