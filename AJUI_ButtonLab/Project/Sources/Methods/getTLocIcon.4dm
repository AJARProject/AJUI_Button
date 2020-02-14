//%attributes = {}
  // getTLocIcon ( {$templateName} ) -> return
  //
  // $templateName : (text) (optionnal)  templateName
  // $icon : (text) (return) icon
  //
  // Get the icon to use in the template

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.11.19, 09:23:01
	  // ----------------------------------------------------
	  // Method: getTLocIcon
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$icon;$templateName)

If (Count parameters:C259=1)
	$templateName:=$1
	
	Case of 
		: ($templateName="@ (G)")
			$icon:=" (G)"
		: ($templateName="@ (P)")
			$icon:=" (P)"
		: ($templateName="@ (S)")
			$icon:=" (S)"
	End case 
	
Else 
	C_POINTER:C301($locationTemp_ptr)
	
	$locationTemp_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"locationTemp_list")
	
	Case of 
		: ($locationTemp_ptr->{$locationTemp_ptr->}="Global")
			$icon:=" (G)"
		: ($locationTemp_ptr->{$locationTemp_ptr->}="Personal")
			$icon:=" (P)"
		: ($locationTemp_ptr->{$locationTemp_ptr->}="Shared")
			$icon:=" (S)"
	End case 
End if 

$0:=$icon