
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 21.11.19, 08:52:57
	  // ----------------------------------------------------
	  // Method: HDI_Focus.Button
	  // Description
	  // Intercepts a shortcut and simulates a mouse click
	  // on the current button with focus
	  // Parameters
	  // ----------------------------------------------------
End if 

  //Post click on the right button 
  // if button name (Form.currentBtnName) is known

$evt:=Form event code:C388

Case of 
	: ($evt=On Clicked:K2:4)
		$objectName:=OBJECT Get name:C1087(Object with focus:K67:3)
		If ($objectName#"")
			If (Form:C1466[$objectName].OnClick()#"")
				EXECUTE METHOD:C1007(Form:C1466[$objectName].OnClick())
			End if 
		End if 
End case 
