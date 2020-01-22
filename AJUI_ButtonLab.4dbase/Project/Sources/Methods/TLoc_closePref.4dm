//%attributes = {}
  // TLoc_closePref ( ) 
  //
  //
  // Hide Tip and save preferences

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 13.11.19, 16:02:59
	  // ----------------------------------------------------
	  // Method: TLoc_closePref
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
C_BOOLEAN:C305($1)


If (Count parameters:C259=1)
	C_OBJECT:C1216($file)
	
	
	Form:C1466.btnTempSettings.Enable(True:C214)
	Form:C1466.btnTempSettings.Draw()
	
	Form:C1466.templateLocPref.path_personal:=Form:C1466.tip_sf_details.path_personal
	Form:C1466.templateLocPref.path_shared:=Form:C1466.tip_sf_details.path_shared
	
	$pref:=JSON Stringify:C1217(Form:C1466.templateLocPref;*)
	$file:=Folder:C1567(fk user preferences folder:K87:10).folder("AJUI_ButtonTempPref").file("AJUI_ButtonTempPref.json")
	$file.setText($pref)
	
	C_POINTER:C301($locationTemp_ptr)
	
	$locationTemp_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"locationTemp_list")
	CLEAR VARIABLE:C89($locationTemp_ptr->)
	
	  //init filter dropdown
	APPEND TO ARRAY:C911($locationTemp_ptr->;"All")
	APPEND TO ARRAY:C911($locationTemp_ptr->;"Global")
	
	If (Form:C1466.templateLocPref.path_personal#"")
		APPEND TO ARRAY:C911($locationTemp_ptr->;"Personal")
	End if 
	
	If (Form:C1466.templateLocPref.path_shared#"")
		APPEND TO ARRAY:C911($locationTemp_ptr->;"Shared")
	End if 
	
	$locationTemp_ptr->:=1
	reloadTemplateList 
End if 
Form:C1466.btnTempSettings.Enable(True:C214)
Form:C1466.tLocTip.Hide()