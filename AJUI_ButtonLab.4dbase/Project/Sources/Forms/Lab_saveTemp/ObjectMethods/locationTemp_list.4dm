C_POINTER:C301($locationTemp_ptr)

$locationTemp_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"locationTemp_list")

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		OBJECT SET VISIBLE:C603(*;"locationTemp_list";True:C214)
		CLEAR VARIABLE:C89($locationTemp_ptr->)
		APPEND TO ARRAY:C911($locationTemp_ptr->;"Global")
		
		If (Form:C1466.templateLocPref.path_personal#Null:C1517)
			If (Form:C1466.templateLocPref.path_personal#"")
				APPEND TO ARRAY:C911($locationTemp_ptr->;"Personal")
			End if 
		End if 
		
		If (Form:C1466.templateLocPref.path_shared#Null:C1517)
			If (Form:C1466.templateLocPref.path_shared#"")
				APPEND TO ARRAY:C911($locationTemp_ptr->;"Shared")
			End if 
		End if 
		
		$locationTemp_ptr->:=1
		Form:C1466.tempIcon:=getTLocIcon 
		
		
		
	: (Form event code:C388=On Data Change:K2:15)
		
		Form:C1466.tempIcon:=getTLocIcon 
End case 