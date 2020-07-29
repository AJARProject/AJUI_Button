
$evt:=Form event code:C388
Case of 
	: ($evt=On Data Change:K2:15)
		C_POINTER:C301($values_ptr;$property_ptr)
		$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
		$values_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")
		$property:=$property_ptr->{$property_ptr->}
		
		  // we get the default state value in case of an empty string in the path
		If ($property="@path@")
			If ($values_ptr->{$values_ptr->}.value="")
				$values_ptr->{$values_ptr->}.value:=Form:C1466.btn1[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default)
			End if 
		End if 
		
		formulaSetValue 
		
		  //remove exception with right click
	: ($evt=On Clicked:K2:4) & (Contextual click:C713) & (Not:C34(Macintosh control down:C544)) & (Not:C34(Macintosh command down:C546))
		C_LONGINT:C283($column;$row)
		LISTBOX GET CELL POSITION:C971(*;"LB_properties";$column;$row)
		
		If ($row>0)
			C_POINTER:C301($property_ptr)
			$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
			$category_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"category_col")
			
			$refMenu:=Create menu:C408
			APPEND MENU ITEM:C411($refMenu;"Remove property exception")
			SET MENU ITEM PARAMETER:C1004($refMenu;-1;"RemovePropertyException")
			APPEND MENU ITEM:C411($refMenu;"Remove property exceptions")
			SET MENU ITEM PARAMETER:C1004($refMenu;-1;"RemovePropertyExceptions")
			
			$choix:=Dynamic pop up menu:C1006($refMenu)
			RELEASE MENU:C978($refMenu)
			
			If ($choix#"")
				Case of 
					: ($choix="RemovePropertyException")
						Form:C1466.btn1.RemovePropertyException(Form:C1466.properties[$property_ptr->-1].formula;Form:C1466.currentState)
					: ($choix="RemovePropertyExceptions")
						Form:C1466.btn1.RemovePropertyExceptions(Form:C1466.properties[$property_ptr->-1].formula)
						
						
				End case 
			End if 
			
			Form:C1466.btnSave.Enable(True:C214)
			Form:C1466.btnSave.Draw()
			
			formulasGetValues 
			formulasSetValues 
			REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
			redrawBtn 
		End if 
		
		
		  //advanced listbox : handle the alternative button
	: ($evt=On Alternative Click:K2:36)
		C_POINTER:C301($values_ptr;$property_ptr)
		$values_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")
		$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
		$property:=$property_ptr->{$property_ptr->}
		
		  //path properties : open the select document
		If ($property="@path@")
			$resourcePath:=Get 4D folder:C485(Current resources folder:K5:16;*)
			$doc:=Select document:C905($resourcePath;"*";"Select the picture path";Package open:K24:8+Use sheet window:K24:11)
			
			$values_ptr->{$values_ptr->}.value:=Replace string:C233(Document;Folder separator:K24:12;"/")
			
		Else 
			  //color properties : launch the color picker
			$bgcolor_l:=Select RGB color:C956(setPickerColor ($values_ptr->{$values_ptr->}.value);"Select the Background Color")
			$bgcolor_t:=Replace string:C233(String:C10($bgcolor_l;"&$");"$";"")
			$bgcolor_t:=(6-Length:C16($bgcolor_t)*"0"+$bgcolor_t)
			$bgcolor_t:="#"+$bgcolor_t
			
			$values_ptr->{$values_ptr->}.value:=$bgcolor_t
		End if 
		
		formulaSetValue 
		
		
End case 
