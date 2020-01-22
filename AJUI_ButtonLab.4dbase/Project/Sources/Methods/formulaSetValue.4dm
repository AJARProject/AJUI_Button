//%attributes = {}
  // formulaSetValue ( ) 
  //
  //
  // this method executes the Setter corresponding to the property so its value has been modified in the listbox 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:22:37
	  // ----------------------------------------------------
	  // Method: formulaSetValue
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_POINTER:C301($values_ptr;$properties_ptr)
$properties_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
$values_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")

  //Check if a state is selected
If (Form:C1466.statePosition>0)
	
	  //call the Setter method for btn1
	Form:C1466.btn1[Form:C1466.properties[$values_ptr->-1].formula](Form:C1466.currentState;$values_ptr->{$values_ptr->}.value)
	
	If ($properties_ptr->{$properties_ptr->}="@color@")
		setArrayColor ($values_ptr->{$values_ptr->}.value;$values_ptr->)
	End if 
	
	  //checks the status and updates the button linked to it with the Setter method
	Case of 
		: (Form:C1466.currentState="default")
			Form:C1466.btn2[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default))
			Form:C1466.btn3[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_hover))
			Form:C1466.btn4[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_active))
			Form:C1466.btn5[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_disable))
			Form:C1466.btn6[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_focus))
		: (Form:C1466.currentState="hover")
			Form:C1466.btn3[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;$values_ptr->{$values_ptr->}.value)
		: (Form:C1466.currentState="active")
			Form:C1466.btn4[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;$values_ptr->{$values_ptr->}.value)
		: (Form:C1466.currentState="disable")
			Form:C1466.btn5[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;$values_ptr->{$values_ptr->}.value)
		: (Form:C1466.currentState="focus")
			Form:C1466.btn6[Form:C1466.properties[$values_ptr->-1].formula](AJUI_btn_default;$values_ptr->{$values_ptr->}.value)
	End case 
	
	setPropertyStyle 
	Form:C1466.btnSave.Enable(True:C214)
	Form:C1466.btnSave.Draw()
	
	redrawBtn 
Else 
	ALERT:C41("Select a state !")
End if 

