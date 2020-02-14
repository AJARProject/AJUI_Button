C_POINTER:C301($locationTemp_ptr)

$locationTemp_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"locationTemp_list")

Case of 
	: (Form event code:C388=On Load:K2:1)
		If (Form:C1466.rename)
			OBJECT SET ENABLED:C1123(*;"locationTemp_list";False:C215)
			
			
		Else 
			CLEAR VARIABLE:C89($locationTemp_ptr->)
			OBJECT SET ENABLED:C1123(*;"locationTemp_list";True:C214)
			APPEND TO ARRAY:C911($locationTemp_ptr->;"Global")
			
			If (Form:C1466.templateLocPref.path_personal#"")
				APPEND TO ARRAY:C911($locationTemp_ptr->;"Personal")
			End if 
			
			If (Form:C1466.templateLocPref.path_shared#"")
				APPEND TO ARRAY:C911($locationTemp_ptr->;"Shared")
			End if 
			$locationTemp_ptr->:=1
			Form:C1466.tempIcon:=getTLocIcon 
		End if 
		
		
	: (Form event code:C388=On Data Change:K2:15)
		
		Form:C1466.tempIcon:=getTLocIcon 
End case 