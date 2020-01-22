//%attributes = {}
  // formulasGetValues (  )
  //
  //
  // Updating the lab's listbox values after a state or template change

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:29:01
	  // ----------------------------------------------------
	  // Method: formulasGetValues
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_COLLECTION:C1488($current_col)
C_POINTER:C301($value_ptr)


$value_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")

  //Loop and execute the Getter
For ($i;0;Form:C1466.properties.length-1)
	
	$value_ptr->{$i+1}.value:=Form:C1466.btn1[Form:C1466.properties[$i].formula](Form:C1466.currentState)
	
End for 

refreshArrayColor 
refreshPropertiesStyle 

