//%attributes = {"shared":true}
  // Lab_SetBgColorOther (  ) 
  //
  // open the color picker

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:14:30
	  // ----------------------------------------------------
	  // Method: Lab_SetBgColorOther
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


$bgcolor_l:=Select RGB color:C956(16777215;"Select the Background Color")
Form:C1466.btnBgOtherParams.value:=$bgcolor_l

