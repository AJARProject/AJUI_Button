//%attributes = {}
  // getTlocPath ( $templateName  ) -> return
  //
  // $templateName : (text) tempalte name
  // $path : (text) (return) path
  //
  // Get the template location path to use

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.11.19, 09:32:30
	  // ----------------------------------------------------
	  // Method: getTlocPath
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$0;$templateName;$path)
C_OBJECT:C1216($folder)

$templateName:=$1

Case of 
	: ($templateName="@ (G)")
		$path:=Form:C1466.templateLocPref.path_global
		$templateName:=Replace string:C233($templateName;" (G)";"")
	: ($templateName="@ (P)")
		$path:=Form:C1466.templateLocPref.path_personal
		$templateName:=Replace string:C233($templateName;" (P)";"")
	: ($templateName="@ (S)")
		$path:=Form:C1466.templateLocPref.path_shared
		$templateName:=Replace string:C233($templateName;" (S)";"")
End case 

  //check templateName folder
If ($templateName#"")
	$folder:=Folder:C1567($path+$templateName+Folder separator:K24:12;fk platform path:K87:2)
	If ($folder.exists)
		$path:=$folder.platformPath
	End if 
End if 

$0:=$path

