//%attributes = {}
  // getLuminance ( $color_l ) -> return
  //
  // $color_l : (longint) color
  // $luminance : (longint) (return) luminance 
  //
  // Return the luminance

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 04.11.19, 15:30:45
	  // ----------------------------------------------------
	  // Method: getLuminance
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($color_obj)
C_TEXT:C284($rgb_str)
C_LONGINT:C283($0;$1;$color_l)
$color_l:=$1
$rgb_str:=SVG_Color_RGB_from_long ($color_l)

$color_obj:=New object:C1471()

C_COLLECTION:C1488($rgb_col)
$rgb_col:=New collection:C1472()
$rgb_str:=Replace string:C233($rgb_str;"rgb(";"")
$rgb_str:=Replace string:C233($rgb_str;")";"")
$rgb_col:=Split string:C1554($rgb_str;",")
$color_obj.R:=$rgb_col[0]
$color_obj.G:=$rgb_col[1]
$color_obj.B:=$rgb_col[2]

  // Luminance
$0:=calcLuminance ($color_obj.R;$color_obj.G;$color_obj.B)

