//%attributes = {}
  // setArrayColor ( $level ; $line ) -> return
  //
  // $1 : (text) current level
  // $2 : (logint) listbox line
  //
  // Set the background color array for the values of the properties in the current line

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 23.10.19, 10:16:06
	  // ----------------------------------------------------
	  // Method: setArrayColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$color_t)
C_LONGINT:C283($2;$line;$color_l)

$color_t:=$1
$line:=$2

If ($color_t="") | ($color_t="none")
	$color_l:=lk inherited:K53:26
Else 
	  // opacity filtering
	If ($color_t="@:@")  //remove opacity to avoid beep from the SVG method
		$opacity_pos:=Position:C15(":";$color_t)
		$color_t:=Substring:C12($color_t;1;$opacity_pos-1)
	End if 
	
	If (Position:C15("0x";$color_t;1)=1)
		$color_l:=hexa2dec ($color_t)
	Else 
		If (Position:C15("#";$color_t;1)=1)
			$color_l:=hexa2dec ($color_t)
		Else 
			$color_l:=SVG_Get_named_color_value ($color_t)
		End if 
	End if 
End if 

bgColorValue{$line}:=$color_l


If (getLuminance ($color_l)>150)
	bgFontColorValue{$line}:=0
	
Else 
	bgFontColorValue{$line}:=12632256
End if 
