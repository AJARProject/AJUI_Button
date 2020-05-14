//%attributes = {}
  // Lab_call ( param1 ) 
  //
  // param1 : (boolean) (optional) to launch the new process
  //
  // Execute the form Lab

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:40:45
	  // ----------------------------------------------------
	  // Method: Lab_call
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_LONGINT:C283($winRef_l)
C_OBJECT:C1216($lab)
C_BOOLEAN:C305($1)

If (Count parameters:C259=0)
	$ref_process:=New process:C317(Current method name:C684;0;Current method name:C684;True:C214)
	SHOW PROCESS:C325($ref_process)
	BRING TO FRONT:C326($ref_process)
Else 
	$lab:=loadPropertiesCollections 
	$lab.templateLocPref:=TLoc_loadPathSettings 
	$lab.tip_sf_details:=New object:C1471
	
	$winRef_l:=Open form window:C675("Lab";Plain form window:K39:10;On the left:K39:2;At the top:K39:5)
	DIALOG:C40("Lab";$lab)
	
	CLOSE WINDOW:C154($winRef_l)
	
End if 
