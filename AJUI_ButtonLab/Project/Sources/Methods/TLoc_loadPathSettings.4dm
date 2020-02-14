//%attributes = {}
  // TLoc_loadPathSettings (  ) -> return
  //
  // $templateLocPref : (object) (return) the content of the settings
  //
  // Load/create the path settings

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.11.19, 14:09:10
	  // ----------------------------------------------------
	  // Method: TLoc_loadPathSettings
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($0;$templateLocPref;$file)

$templateLocPref:=New object:C1471

  //load template settings
$file:=Folder:C1567(fk user preferences folder:K87:10).folder("AJUI_ButtonTempPref").file("AJUI_ButtonTempPref.json")
$globalPath:=Get 4D folder:C485(Current resources folder:K5:16;*)+"AJUI_Button_Templates"+Folder separator:K24:12
If ($file.exists)
	$templateLocPref:=JSON Parse:C1218($file.getText())
	$templateLocPref.path_global:=$globalPath
Else 
	C_BOOLEAN:C305($created)
	$created:=$file.create()
	If ($created)
		$templateLocPref:=New object:C1471("path_global";$globalPath;"path_shared";"";"path_personal";"")
		$pref:=JSON Stringify:C1217($templateLocPref;*)
		$file.setText($pref)
	Else 
		ALERT:C41("Creation of the preference file not possible")
	End if 
End if 

$0:=$templateLocPref