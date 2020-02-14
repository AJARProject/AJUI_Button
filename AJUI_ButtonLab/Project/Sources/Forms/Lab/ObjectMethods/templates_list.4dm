C_POINTER:C301($templates_ptr)
C_OBJECT:C1216($template_obj)
C_TEXT:C284($templateName)
C_COLLECTION:C1488($templates_col;$templates_col2)



$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		CLEAR VARIABLE:C89($templates_ptr->)
		
		If (Form:C1466.templateLocPref.path_global#"")
			$folder:=Folder:C1567(Form:C1466.templateLocPref.path_global;fk platform path:K87:2)
			If ($folder.exists)
				$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].templateName+" (G)")
				End for 
			End if 
		End if 
		
		If (Form:C1466.templateLocPref.path_personal#"")
			$folder:=Folder:C1567(Form:C1466.templateLocPref.path_personal;fk platform path:K87:2)
			If ($folder.exists)
				
				$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].templateName+" (P)")
				End for 
			End if 
		End if 
		
		If (Form:C1466.templateLocPref.path_shared#"")
			$folder:=Folder:C1567(Form:C1466.templateLocPref.path_shared;fk platform path:K87:2)
			If ($folder.exists)
				
				$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
				
				For ($i;0;$templates_col.length-1)
					APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].templateName+" (S)")
				End for 
			End if 
		End if 
		
		SORT ARRAY:C229($templates_ptr->)
		
		
	: (Form event code:C388=On After Edit:K2:43)  //after choosing another style
		
		
	: (Form event code:C388=On Data Change:K2:15)
		
		OBJECT SET ENABLED:C1123(*;"save_btn";True:C214)
		
	: (Form event code:C388=On Clicked:K2:4)  //when the user select an element
		
		$templateName:=$templates_ptr->{$templates_ptr->}
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
		  // to do setup Lab bg color
		
		GOTO OBJECT:C206(*;"")
		
		
		LISTBOX SELECT ROW:C912(*;"StatesLB";1)
		Form:C1466.currentState:=AJUI_btn_default
		formulasSetValues 
		refresh 
		Form:C1466.btnSave.Enable(False:C215)
		Form:C1466.btnSave.Draw()
		
		SET TIMER:C645(-1)
		
		
		
End case 