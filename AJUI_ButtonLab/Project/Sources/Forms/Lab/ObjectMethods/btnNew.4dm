C_POINTER:C301($templates_ptr)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnNew:=newTemplateButton 
		Form:C1466.btnNew.Name("btnNew")
		Form:C1466.btnNew.Label(AJUI_btn_default;"New")
		Form:C1466.btnNew.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994437---add-create-new-plus-positive.svg")
		
		Tip_NewButtonName 
		
		Form:C1466.tipNew:=tip_templatesButtons ("btnNew";"New template")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnNew"))
			Form:C1466.tipNew.TextLabel("New template")
			Form:C1466.tipNew.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipNew.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
	: (Form event code:C388=On Clicked:K2:4)
		
		If (OBJECT Get enabled:C1079(*;"btnNew"))
			Form:C1466.tipNew.Hide()
			Form:C1466.btnSaveActive:=OBJECT Get enabled:C1079(*;"btnSave")
			templatesButtonsEnable (False:C215;"btnNew")
			Form:C1466.tip_sf_details.templateName:=""
			Form:C1466.tip_sf_details.rename:=False:C215
			Form:C1466.tip_sf_details.templateLocPref:=OB Copy:C1225(Form:C1466.templateLocPref)
			Form:C1466.tipNewTemplate.TargetName("btnNew")
			Form:C1466.tipNewTemplate.Show()  // MI
			
		End if 
		
		
		
End case 

Form:C1466.btnNew.Draw()