//%attributes = {}
  // setPropertyStyle (  ) 
  //
  //
  // Set the background style array for the property in the current listbox line

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.01.20, 10:27:20
	  // ----------------------------------------------------
	  // Method: setPropertyStyle
	  // Description
	  // 
	  // bold : current value # default value
	  // italic : state exception
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($formula)
C_POINTER:C301($property_ptr)

$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
$formula:=Form:C1466.properties[$property_ptr->-1].formula

If (Form:C1466.currentState#AJUI_btn_default)
	If (Form:C1466.btn1[$formula](AJUI_btn_default)#Form:C1466.btn1[$formula](Form:C1466.currentState))
		bgStylesValue{$property_ptr->}:=Bold:K14:2
	Else 
		bgStylesValue{$property_ptr->}:=0
	End if 
Else 
	If (Form:C1466.defaultValues[$formula](AJUI_btn_default)#Form:C1466.btn1[$formula](AJUI_btn_default))
		bgStylesValue{$property_ptr->}:=Bold:K14:2
	Else 
		bgStylesValue{$property_ptr->}:=0
	End if 
End if 

