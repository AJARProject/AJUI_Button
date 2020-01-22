//%attributes = {"shared":true}
  // Lab_setBgColor_btn ( $params ) -> return
  //
  // $params : (object) update background color
  //
  // This method is used to update the background color of the lab

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:16:26
	  // ----------------------------------------------------
	  // Method: Lab_setBgColor_btn
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_LONGINT:C283($bgcolor_l)
C_OBJECT:C1216($1;$params)

$params:=$1

$bgcolor_l:=$params.value


OBJECT SET RGB COLORS:C628(*;"bgTestZone@";$bgcolor_l;$bgcolor_l)

  // Switch text comment color 
If (getLuminance ($bgcolor_l)>150)
	OBJECT SET RGB COLORS:C628(*;"bgz_@";Black:K11:16;Background color none:K23:10)
Else 
	_O_OBJECT SET COLOR:C271(*;"bgz_@";White:K11:1;Background color none:K23:10)
End if 

If ($params.setColorbtnBgOther)
	$bgcolor_t:=Replace string:C233(String:C10($bgcolor_l;"&$");"$";"")
	$bgcolor_t:=(6-Length:C16($bgcolor_t)*"0"+$bgcolor_t)
	$bgcolor_t:="#"+$bgcolor_t
	Form:C1466.btnBgOther.BGColor(AJUI_btn_default;$bgcolor_t)
	Form:C1466.btnBgOther.BorderColor(AJUI_btn_default;"white")
	Form:C1466.btnBgOther.Draw()
End if 

