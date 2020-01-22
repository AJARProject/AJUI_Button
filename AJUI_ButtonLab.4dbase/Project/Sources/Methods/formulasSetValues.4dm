//%attributes = {}
  // formulasSetValues ( ) -> return
  //
  //
  // synchronizes the lab states buttons with btn1

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:31:31
	  // ----------------------------------------------------
	  // Method: formulasSetValues
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 



  //loop and execute the Setters formulas using the Getters formulas from btn1
For ($i;0;Form:C1466.properties.length-1)
	
	Form:C1466.btn2[Form:C1466.properties[$i].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$i].formula](AJUI_btn_default))
	Form:C1466.btn3[Form:C1466.properties[$i].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$i].formula](AJUI_btn_hover))
	Form:C1466.btn4[Form:C1466.properties[$i].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$i].formula](AJUI_btn_active))
	Form:C1466.btn5[Form:C1466.properties[$i].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$i].formula](AJUI_btn_disable))
	Form:C1466.btn6[Form:C1466.properties[$i].formula](AJUI_btn_default;Form:C1466.btn1[Form:C1466.properties[$i].formula](AJUI_btn_focus))
	
End for 