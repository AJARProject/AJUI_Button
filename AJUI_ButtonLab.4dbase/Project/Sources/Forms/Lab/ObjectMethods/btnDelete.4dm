C_POINTER:C301($templates_ptr)
C_BOOLEAN:C305($isDeleted)
C_TEXT:C284($templateName)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnDelete:=newTemplateButton 
		Form:C1466.btnDelete.Name("btnDelete")
		Form:C1466.btnDelete.Label(AJUI_btn_default;"Delete")
		Form:C1466.btnDelete.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994410---delete-dustbin-garbage-recycle-bin-trash-can.svg")
		
		Form:C1466.tipDelete:=tip_templatesButtons ("btnDelete";"Delete template")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnDelete"))
			Form:C1466.tipDelete.TextLabel("Delete template")
			Form:C1466.tipDelete.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipDelete.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
		  // to do
		
	: (Form event code:C388=On Clicked:K2:4)
		C_POINTER:C301($templates_ptr)
		$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
		$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
		$fileName_t:=Replace string:C233($templates_ptr->{$templates_ptr->};$icon;"")
		
		CONFIRM:C162("Are you sure that you want to delete\rthis template ?";"Yes just do it !";"Oups! Don't")
		If (OK=1)
			
			
			If ($fileName_t#"")
				If ($fileName_t="@.json")
					  //do nothing
				Else 
					$fileName_t:=$fileName_t+".json"
				End if 
				
				$pathName_t:=getTlocPath (Replace string:C233($fileName_t;".json";"")+$icon)
				
				$testPathName:=Test path name:C476($pathName_t+$fileName_t)
				
				  //delete template
				If ($testPathName=1)  //check file
					$checkFolder:="@"+Replace string:C233($fileName_t;".json";Folder separator:K24:12)
					If ($pathName_t=$checkFolder)
						DELETE FOLDER:C693($pathName_t;Delete with contents:K24:24)
					Else 
						DELETE DOCUMENT:C159($pathName_t+$fileName_t)
					End if 
					If (OK=1)
						$position:=Find in array:C230($templates_ptr->;$templates_ptr->{$templates_ptr->})
						If ($position>0)
							DELETE FROM ARRAY:C228($templates_ptr->;$position)
							$templates_ptr->:=0
						End if 
						
						  //take first template if list not empty, else new template
						If (Size of array:C274($templates_ptr->)>0)
							
							$templates_ptr->:=1
							$templateName:=$templates_ptr->{1}
							$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
							$templateName:=Substring:C12($templateName;1;Length:C16($templateName)-4)
							$template_obj:=New object:C1471("templateName";$templateName;"templatePath";getTlocPath ($templateName+$icon))
							Form:C1466.btn1:=New AJUI_Button ($template_obj)
							Form:C1466.btn1.Name("btn1")
							Form:C1466.btn2:=OB Copy:C1225(Form:C1466.btn1)
							Form:C1466.btn2.ResetAllStates()
							Form:C1466.btn2.Name("btn2")
							Form:C1466.btn3:=OB Copy:C1225(Form:C1466.btn1)
							Form:C1466.btn3.ResetAllStates()
							Form:C1466.btn3.Name("btn3")
							Form:C1466.btn4:=OB Copy:C1225(Form:C1466.btn1)
							Form:C1466.btn4.ResetAllStates()
							Form:C1466.btn4.Name("btn4")
							Form:C1466.btn5:=OB Copy:C1225(Form:C1466.btn1)
							Form:C1466.btn5.ResetAllStates()
							Form:C1466.btn5.Name("btn5")
							Form:C1466.btn6:=OB Copy:C1225(Form:C1466.btn1)
							Form:C1466.btn6.ResetAllStates()
							Form:C1466.btn6.Name("btn6")
							Form:C1466.currentBtn:=OB Copy:C1225(Form:C1466.btn1)
							
						Else 
							
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
							$icon:=getTLocIcon 
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
							
						End if 
						
						LISTBOX SELECT ROW:C912(*;"StatesLB";1)
						Form:C1466.currentState:=AJUI_btn_default
						formulasGetValues 
						REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
						refresh 
						redrawBtn 
						Form:C1466.currentBtn:=OB Copy:C1225(Form:C1466.btn1)
						Form:C1466.btnDelete.OnClick("alertDeleted")
						
						Form:C1466.btnSave.Enable(False:C215)
						Form:C1466.btnSave.Draw()
						
					Else 
						ALERT:C41("Unknow error : can't delete the template")
						Form:C1466.btnDelete.OnClick("")
					End if 
					
				Else 
					ALERT:C41("File not found"+"\r\r"+$pathName_t+$fileName_t)
					Form:C1466.btnDelete.OnClick("")
				End if 
			End if 
			
		End if 
		
End case 


Form:C1466.btnDelete.Draw()

