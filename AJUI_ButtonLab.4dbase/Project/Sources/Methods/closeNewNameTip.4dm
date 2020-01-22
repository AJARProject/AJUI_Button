//%attributes = {}
  // closeNewNameTip ( param1 ) 
  //
  // param1 : (boolean) add new template
  //
  // Add the new template if validate and update the form objects

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 14.08.19, 09:19:41
	  // ----------------------------------------------------
	  // Method: closeNewNameTip
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
C_BOOLEAN:C305($1)
C_TEXT:C284($nameTemplate;$newNameTemplate)

If ($1)
	$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
	
	  //check it's a rename or a new template
	If (Form:C1466.tip_sf_details.rename)
		$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
		$pos:=Find in array:C230($templates_ptr->;Form:C1466.btn1.templateName+$icon)
		If ($pos>0)
			C_OBJECT:C1216($file;$folder)
			$fileName:=Form:C1466.btn1.templateName
			
			If ($fileName#"")
				If ($fileName="@.json")
					  //do nothing
				Else 
					$fileName:=$fileName+".json"
				End if 
				$pathName:=getTlocPath (Form:C1466.btn1.templateName+$icon)
				$file:=File:C1566($pathName+$fileName;fk platform path:K87:2)
				
				  //replace the old template with the new one
				If ($file.exists)  //check file
					$newNameTemplate:=Form:C1466.tip_sf_details.templateName
					$file:=$file.rename($newNameTemplate+".json")
					If ($file.exists)
						
						Form:C1466.btn1.templateName:=$newNameTemplate
						Form:C1466.btn1.Export($newNameTemplate;$pathName)
						
						$folder:=Folder:C1567($pathName;fk platform path:K87:2)
						If ($folder.name=(Replace string:C233($fileName;".json";"")))
							$folder:=$folder.rename($newNameTemplate)
							If (Not:C34($folder.exists))
								ALERT:C41("File renamed correctly, but the renaming of the folder failed")
							End if 
						End if 
						
						
						
						$templates_ptr->{$templates_ptr->}:=$newNameTemplate+$icon
						
						
						SORT ARRAY:C229($templates_ptr->)
						$pos:=Find in array:C230($templates_ptr->;Form:C1466.btn1.templateName+$icon)
						$templates_ptr->:=$pos
					Else 
						ALERT:C41("Unknow error : can't rename the template")
					End if 
				Else 
					ALERT:C41("File not found"+"\r\r"+$pathName+$fileName)
				End if 
			End if 
		Else 
			ALERT:C41("No template selected")
		End if 
	Else 
		
		  //create new template
		Form:C1466.btn1:=New AJUI_Button 
		Form:C1466.btn1.Name("btn1")
		Form:C1466.btn1.BGColor(AJUI_btn_hover;"#4791C7")
		Form:C1466.btn1.BGColor(AJUI_btn_active;"#4388BB")
		Form:C1466.btn1.BGColor(AJUI_btn_disable;"#4d9ad4:50")
		Form:C1466.btn1.BorderSize(AJUI_btn_focus;3)
		Form:C1466.btn1.templateName:=Form:C1466.tip_sf_details.templateName
		Form:C1466.btn2:=New AJUI_Button 
		Form:C1466.btn2.Name("btn2")
		Form:C1466.btn3:=New AJUI_Button 
		Form:C1466.btn3.Name("btn3")
		Form:C1466.btn3.BGColor(AJUI_btn_default;"#4791C7")
		Form:C1466.btn4:=New AJUI_Button 
		Form:C1466.btn4.Name("btn4")
		Form:C1466.btn4.BGColor(AJUI_btn_default;"#4388BB")
		Form:C1466.btn5:=New AJUI_Button 
		Form:C1466.btn5.Name("btn5")
		Form:C1466.btn5.BGColor(AJUI_btn_disable;"#4d9ad4:50")
		Form:C1466.btn6:=New AJUI_Button 
		Form:C1466.btn6.Name("btn6")
		Form:C1466.btn6.BorderSize(AJUI_btn_default;3)
		
		  //save new template
		$icon:=Form:C1466.tip_sf_details.tempIcon
		$nameTemplate:=Form:C1466.btn1.templateName
		Form:C1466.btn1.Export($nameTemplate;getTlocPath ($icon))
		$nameTemplate:=$nameTemplate+$icon
		$pos:=Find in array:C230($templates_ptr->;$nameTemplate)
		If ($pos>0)
			  //nothing to do
		Else 
			APPEND TO ARRAY:C911($templates_ptr->;$nameTemplate)
			SORT ARRAY:C229($templates_ptr->)
			$pos:=Find in array:C230($templates_ptr->;$nameTemplate)
			$templates_ptr->:=$pos
		End if 
		LISTBOX SELECT ROW:C912(*;"StatesLB";1)
		Form:C1466.currentState:=AJUI_btn_default
		formulasGetValues 
		
		REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
		refresh 
		
		Form:C1466.btnSave.Enable(False:C215)
		Form:C1466.btnSave.Draw()
		
		redrawBtn 
		
		
	End if 
	Form:C1466.currentBtn:=OB Copy:C1225(Form:C1466.btn1)
	  //enable/disable template buttons
	templatesButtonsEnable (True:C214;"btnSave")
Else 
	  //enable/disable template buttons
	If (Form:C1466.btnSaveActive)
		templatesButtonsEnable (True:C214)
	Else 
		templatesButtonsEnable (True:C214;"btnSave")
	End if 
End if 

Form:C1466.tipNewTemplate.Hide()

