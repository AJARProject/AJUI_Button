//%attributes = {}
  // refreshPropertiesStyle (  ) 
  //
  //
  // Set the background style array for the properties in the listbox

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.01.20, 10:06:07
	  // ----------------------------------------------------
	  // Method: refreshPropertiesStyle
	  // Description
	  // 
	  // bold : current value # default value
	  // italic : state exception
	  //
	  // ----------------------------------------------------
End if 


ARRAY LONGINT:C221(bgStylesValue;0)

For ($i;0;Form:C1466.properties.length-1)
	
	If (Form:C1466.currentState#AJUI_btn_default)
		If (Form:C1466.btn1[Form:C1466.properties[$i].formula](AJUI_btn_default)#Form:C1466.btn1[Form:C1466.properties[$i].formula](Form:C1466.currentState))
			APPEND TO ARRAY:C911(bgStylesValue;Bold:K14:2)
		Else 
			APPEND TO ARRAY:C911(bgStylesValue;0)
		End if 
	Else 
		If (Form:C1466.defaultValues[Form:C1466.properties[$i].formula](AJUI_btn_default)#Form:C1466.btn1[Form:C1466.properties[$i].formula](AJUI_btn_default))
			APPEND TO ARRAY:C911(bgStylesValue;Bold:K14:2)
		Else 
			APPEND TO ARRAY:C911(bgStylesValue;0)
		End if 
	End if 
	
End for 