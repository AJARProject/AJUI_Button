//%attributes = {"shared":true}
  // minusOne_cb ()
  //
  // Callback minus one for the HDI_DisableBtn

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 14.08.19, 09:14:04
	  // ----------------------------------------------------
	  // Method: minusOne_cb
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

$current:=Form:C1466.number

  // enable the button
If ($current=5)
	Form:C1466.btn_plus.Enable(True:C214)
	  //Form.btn_minus.Draw()
End if 

If (Form:C1466.number>0)
	Form:C1466.number:=$current-1
End if 