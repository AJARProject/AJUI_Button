//%attributes = {}
  // HDI_TextClippedBtn_call ( param1 ) 
  //
  // param1 : (boolean) (optional) to launch the new process
  //
  // Execute the form HDI_TextClippedBtn

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:39:08
	  // ----------------------------------------------------
	  // Method: HDI_TextClippedBtn_call
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_LONGINT:C283($winRef_l)

C_BOOLEAN:C305($1)

If (Count parameters:C259=0)
	$ref_process:=New process:C317(Current method name:C684;0;Current method name:C684;True:C214)
	SHOW PROCESS:C325($ref_process)
	BRING TO FRONT:C326($ref_process)
Else 
	
	$winRef_l:=Open form window:C675("HDI_TextClippedBtn";Plain form window:K39:10;On the left:K39:2;At the top:K39:5)
	DIALOG:C40("HDI_TextClippedBtn")
	CLOSE WINDOW:C154($winRef_l)
	
End if 



