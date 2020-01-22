C_POINTER:C301($templates_ptr)
C_TEXT:C284($nameTemplate)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnDuplicate:=newTemplateButton 
		Form:C1466.btnDuplicate.Name("btnDuplicate")
		Form:C1466.btnDuplicate.Label(AJUI_btn_default;"Duplicate")
		Form:C1466.btnDuplicate.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994425---camera-interface-lens-photo-photography.svg")
		
		Form:C1466.tipDuplicate:=tip_templatesButtons ("btnDuplicate";"Duplicate template")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnDuplicate"))
			Form:C1466.tipDuplicate.TextLabel("Duplicate template")
			Form:C1466.tipDuplicate.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipDuplicate.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
		  // to do
		
	: (Form event code:C388=On Clicked:K2:4)
		C_OBJECT:C1216($file;$folder;$folderPref)
		C_BOOLEAN:C305($folderNotFound;$file_copy)
		$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
		
		  //no need to redraw since its the same AJUI Button. Just need to update the template name and create the copy
		$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
		$nameTemplate:=Form:C1466.btn1.templateName+"_copy"
		
		
		
		  //save duplicate
		$templatePath:=getTlocPath (Form:C1466.btn1.templateName+$icon)
		$folder:=Folder:C1567($templatePath;fk platform path:K87:2)
		
		If ($folder.name=Form:C1466.btn1.templateName)
			$folderPref:=Folder:C1567(getTlocPath ($icon);fk platform path:K87:2)
			If ($folder.exists)
				$folder:=$folder.copyTo($folderPref;$nameTemplate)
				$templatePath:=Replace string:C233($templatePath;Form:C1466.btn1.templateName;$nameTemplate)
			Else 
				$folderNotFound:=True:C214
			End if 
		Else 
			$file_copy:=True:C214
		End if 
		
		If (Not:C34($folderNotFound))
			$file:=File:C1566($templatePath+Form:C1466.btn1.templateName+".json";fk platform path:K87:2)
			If ($file.exists)
				If ($file_copy)
					$file:=$file.copyTo($folder;$nameTemplate+".json";fk overwrite:K87:5)
				Else 
					$file:=$file.rename($nameTemplate+".json")
				End if 
				Form:C1466.btn1.templateName:=$nameTemplate
				Form:C1466.btn1.Export($nameTemplate;$templatePath)
				$nameTemplate:=$nameTemplate+$icon
				$pos:=Find in array:C230($templates_ptr->;$nameTemplate)
				If ($pos>0)
					$templates_ptr->:=$pos
				Else 
					APPEND TO ARRAY:C911($templates_ptr->;$nameTemplate)
					SORT ARRAY:C229($templates_ptr->)
					$pos:=Find in array:C230($templates_ptr->;$nameTemplate)
					$templates_ptr->:=$pos
				End if 
				
				Form:C1466.btnSave.Enable(False:C215)
				Form:C1466.btnSave.Draw()
				
				Form:C1466.currentBtn:=OB Copy:C1225(Form:C1466.btn1)
			Else 
				ALERT:C41("File not found")
			End if 
		Else 
			ALERT:C41("Folder not found")
		End if 
		
End case 


Form:C1466.btnDuplicate.Draw()