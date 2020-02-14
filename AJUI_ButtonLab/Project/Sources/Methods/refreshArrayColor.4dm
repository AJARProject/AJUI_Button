//%attributes = {}
  // refreshArrayColor (  ) -> return
  //
  //
  // Set the background color array for the values of the properties in listbox

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 22.10.19, 16:16:40
	  // ----------------------------------------------------
	  // Method: refreshArrayColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
C_TEXT:C284($value)
ARRAY LONGINT:C221(bgColorValue;0)
ARRAY LONGINT:C221(bgFontColorValue;0)
C_COLLECTION:C1488($properties_col)



$properties_col:=Form:C1466.properties

  //loop on each property to find color properties
For ($i;0;$properties_col.length-1)
	If ($properties_col[$i].property="@color@")
		
		$value:=Form:C1466.btn1[$properties_col[$i].formula](Form:C1466.currentState)
		
		If ($value="") | ($value="none")
			APPEND TO ARRAY:C911(bgColorValue;16777215)
			APPEND TO ARRAY:C911(bgFontColorValue;0)
		Else 
			
			If (Position:C15("#";$value;1)=1)
				APPEND TO ARRAY:C911(bgColorValue;hexa2dec ($value))
				
				If (getLuminance (hexa2dec ($value))>150)
					APPEND TO ARRAY:C911(bgFontColorValue;0)
				Else 
					APPEND TO ARRAY:C911(bgFontColorValue;12632256)
				End if 
				
			Else 
				If ($value="@:@")  //remove opacity to avoid beep from the SVG method
					$opacity_pos:=Position:C15(":";$value)
					$value:=Substring:C12($value;1;$opacity_pos-1)
				End if 
				
				APPEND TO ARRAY:C911(bgColorValue;SVG_Get_named_color_value ($value))
				
				If (getLuminance (SVG_Get_named_color_value ($value))>150)
					APPEND TO ARRAY:C911(bgFontColorValue;0)
				Else 
					APPEND TO ARRAY:C911(bgFontColorValue;12632256)
				End if 
			End if 
		End if 
		
	Else 
		APPEND TO ARRAY:C911(bgColorValue;16777215)
		APPEND TO ARRAY:C911(bgFontColorValue;0)
	End if 
End for 
