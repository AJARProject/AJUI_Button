//%attributes = {}

  // luminance ( Red ; Green ; Blue ) -> return
  //
  // $Red : (longint) red value
  // $Green : (longint) green value
  // $Blue : (longint) blue vale
  // $luminance : (longint) luminance
  //
  // Calc the luminance

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 30.10.19, 16:46:19
	  // ----------------------------------------------------
	  // Method: luminance
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$2;$3)
C_LONGINT:C283($Red;$Green;$Blue)

$Red:=Num:C11($1)
$Green:=Num:C11($2)
$Blue:=Num:C11($3)

$0:=(0.299*$Red)+(0.587*$Green)+(0.114*$Blue)
