

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btnRename:=newTemplateButton 
		Form:C1466.btnRename.Name("btnRename")
		Form:C1466.btnRename.Label(AJUI_btn_default;"Rename")
		Form:C1466.btnRename.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994395---edit-pen-pencil-stationery-write.svg")
		
		Tip_NewButtonName 
		
		Form:C1466.tipRename:=tip_templatesButtons ("btnRename";"Rename template")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnRename"))
			Form:C1466.tipRename.TextLabel("Rename template")
			Form:C1466.tipRename.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipRename.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
	: (Form event code:C388=On Clicked:K2:4)
		
		If (OBJECT Get enabled:C1079(*;"btnRename"))
			Form:C1466.tipRename.Hide()
			Form:C1466.btnSaveActive:=OBJECT Get enabled:C1079(*;"btnSave")
			templatesButtonsEnable (False:C215;"btnRename")
			Form:C1466.tip_sf_details:=New object:C1471("templateName";Form:C1466.btn1.templateName;"rename";True:C214)
			Form:C1466.tipNewTemplate.TargetName("btnRename")
			Form:C1466.tipNewTemplate.Show()
		End if 
		
		
		
End case 

Form:C1466.btnRename.Draw()