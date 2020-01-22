  //method to set the default value when the user ctrl click a property in the listbox
$evt:=Form event code:C388

Case of 
	: ($evt=On Clicked:K2:4)
		C_BOOLEAN:C305($check_ctrl)
		If (Is macOS:C1572)
			$check_ctrl:=Macintosh control down:C544
		Else 
			$check_ctrl:=Macintosh command down:C546
		End if 
		If ($check_ctrl)
			If (Form:C1466.currentState#AJUI_btn_default)
				
				C_LONGINT:C283($column;$row)
				LISTBOX GET CELL POSITION:C971(*;"LB_properties";$column;$row)
				
				If ($row>0)
					$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
					$category_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"category_col")
					
					Form:C1466.btn1.RemovePropertyException(Form:C1466.properties[$property_ptr->-1].formula;Form:C1466.currentState)
				End if 
				
				Form:C1466.btnSave.Enable(True:C214)
				Form:C1466.btnSave.Draw()
				
				formulasGetValues 
				formulasSetValues 
				REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
				redrawBtn 
				
			Else 
				C_POINTER:C301($property_ptr;$value_ptr;$category_ptr)
				C_COLLECTION:C1488($properties_col)
				$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
				$value_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")
				$category_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"category_col")
				$properties_col:=Form:C1466.properties.query(" property = :1 & category = :2";$property_ptr->{$property_ptr->};$category_ptr->{$category_ptr->})
				
				If ($properties_col.length>0)
					If (bgStylesValue{$property_ptr->}>0)
						
						$value_ptr->{$value_ptr->}.value:=Form:C1466.defaultValues[$properties_col[0].formula](AJUI_btn_default)
						
						formulaSetValue 
						
					End if 
				End if 
			End if 
		End if 
End case 