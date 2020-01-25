//%attributes = {}
  // reloadTemplateList ( ) 
  //
  //
  // Reload the template list to apply a filter or after a modification in the preference file.

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 20.11.19, 15:41:27
	  // ----------------------------------------------------
	  // Method: reloadTemplateList
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_POINTER:C301($templates_ptr)
C_POINTER:C301($locationTemp_ptr)

$locationTemp_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"locationTemp_list")
$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
CLEAR VARIABLE:C89($templates_ptr->)
$tempCat:=$locationTemp_ptr->{$locationTemp_ptr->}

  //load global file
If ($tempCat="All") | ($tempCat="Global")
	If (Form:C1466.templateLocPref.path_global#"")
		$folder:=Folder:C1567(Form:C1466.templateLocPref.path_global;fk platform path:K87:2)
		If ($folder.exists)
			$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
			
			For ($i;0;$templates_col.length-1)
				APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].templateName+" (G)")
			End for 
		End if 
	End if 
End if 

  //load personal file
If ($tempCat="All") | ($tempCat="Personal")
	If (Form:C1466.templateLocPref.path_personal#"")
		$folder:=Folder:C1567(Form:C1466.templateLocPref.path_personal;fk platform path:K87:2)
		If ($folder.exists)
			
			$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
			
			For ($i;0;$templates_col.length-1)
				APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].templateName+" (P)")
			End for 
		End if 
	End if 
End if 

  //load shared file
If ($tempCat="All") | ($tempCat="Shared")
	If (Form:C1466.templateLocPref.path_shared#"")
		$folder:=Folder:C1567(Form:C1466.templateLocPref.path_shared;fk platform path:K87:2)
		If ($folder.exists)
			
			$templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
			
			For ($i;0;$templates_col.length-1)
				APPEND TO ARRAY:C911($templates_ptr->;$templates_col[$i].templateName+" (S)")
			End for 
		End if 
	End if 
End if 

SORT ARRAY:C229($templates_ptr->)

  //redraw buttons with the first template of the list
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
End if 

LISTBOX SELECT ROW:C912(*;"StatesLB";1)
Form:C1466.currentState:=AJUI_btn_default
formulasGetValues 
formulasSetValues 
REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
refresh 
redrawBtn 