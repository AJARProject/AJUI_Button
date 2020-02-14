
C_TEXT:C284($nameTemplate)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnSave:=newTemplateButton 
		Form:C1466.btnSave.Name("btnSave")
		Form:C1466.btnSave.Label(AJUI_btn_default;"Save")
		Form:C1466.btnSave.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994423---checkmark-complete-correct-done-yes.svg")
		Form:C1466.btnSave.Enable(False:C215)
		
		Tip_SaveTempSubform 
		Form:C1466.tipSaveTemp:=tip_templatesButtons ("btnSave";"Save template")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnSave"))
			Form:C1466.tipSaveTemp.TextLabel("Save template")
			Form:C1466.tipSaveTemp.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipSaveTemp.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
		  // to do
		
	: (Form event code:C388=On Clicked:K2:4)
		
		If (OBJECT Get enabled:C1079(*;"btnSave"))
			Form:C1466.tipSaveTemp.Hide()
			
			templatesButtonsEnable (False:C215)
			C_POINTER:C301($templates_ptr)
			$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
			Form:C1466.tip_sf_details:=New object:C1471("templateLocPref";OB Copy:C1225(Form:C1466.templateLocPref);"currentTemplatePath";getTlocPath (getTLocIcon ($templates_ptr->{$templates_ptr->})))
			Form:C1466.tipSaveTemplateSubform.TargetName("btnSave")
			Form:C1466.tipSaveTemplateSubform.Show()
			
		End if 
		
		
End case 


Form:C1466.btnSave.Draw()