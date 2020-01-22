//%attributes = {}
  // FAB_setMainPosition ( ) 
  //
  //
  // This method update the mainPosition and the coordinates of the main button (HDI_FAB)

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 18.12.19, 15:45:41
	  // ----------------------------------------------------
	  // Method: FAB_setMainPosition
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($currentBtnName)
$currentBtnName:=OBJECT Get name:C1087(Object current:K67:2)

Form:C1466.primary_btn.FABMainPosition($currentBtnName)
Form:C1466.primary_btn.Show()


Case of 
	: ($currentBtnName="top-left")
		$l:=30
		$t:=220
		
	: ($currentBtnName="top")
		$l:=343
		$t:=220
		
	: ($currentBtnName="top-right")
		$l:=647
		$t:=220
		
		
	: ($currentBtnName="left")
		$l:=30
		$t:=332
		
	: ($currentBtnName="center")
		$l:=343
		$t:=332
		
	: ($currentBtnName="right")
		$l:=647
		$t:=332
		
		
	: ($currentBtnName="bottom-left")
		$l:=30
		$t:=444
		
	: ($currentBtnName="bottom")
		$l:=343
		$t:=444
		
	: ($currentBtnName="bottom-right")
		$l:=647
		$t:=444
End case 

OBJECT SET COORDINATES:C1248(*;"primary_btn";$l;$t;$l+60;$t+60)

