

Case of 
	: (Form event code:C388=On Load:K2:1)
		C_POINTER:C301($locationTemp_ptr)
		
		$locationTemp_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"locationTemp_list")
		
		APPEND TO ARRAY:C911($locationTemp_ptr->;"All")
		APPEND TO ARRAY:C911($locationTemp_ptr->;"Global")
		
		If (Form:C1466.templateLocPref.path_personal#"")
			APPEND TO ARRAY:C911($locationTemp_ptr->;"Personal")
		End if 
		
		If (Form:C1466.templateLocPref.path_shared#"")
			APPEND TO ARRAY:C911($locationTemp_ptr->;"Shared")
		End if 
		
		$locationTemp_ptr->:=1
	: (Form event code:C388=On Data Change:K2:15)
		
		reloadTemplateList 
		
End case 