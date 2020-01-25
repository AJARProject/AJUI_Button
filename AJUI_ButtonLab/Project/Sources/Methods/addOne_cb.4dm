//%attributes = {"shared":true}
  // addOne_cb ()
  //
  // Callback add one for the HDI_DisableBtn

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 14.08.19, 09:11:41
	  // ----------------------------------------------------
	  // Method: addOne_cb
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


$current:=Form:C1466.number

  // enable the button
If ($current=0)
	Form:C1466.btn_minus.Enable(True:C214)
	  //Form.btn_plus.Draw()
End if 

If (Form:C1466.number<5)
	Form:C1466.number:=$current+1
End if 