//%attributes = {"shared":true}
  // Lab_SetBgColorWhite (  )
  //
  // Set background color to white

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:18:43
	  // ----------------------------------------------------
	  // Method: Lab_SetBgColorWhite
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


_O_OBJECT SET COLOR:C271(*;"bgTestZone";-(White:K11:1+(256*White:K11:1)))
_O_OBJECT SET COLOR:C271(*;"bgz_@";-(Black:K11:16+(256*Black:K11:16)))
