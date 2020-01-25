//%attributes = {}
  // setPickerColor ( $value ) -> return
  //
  // $1 : (text)  color in the listbox
  // $0 : (longint) (return) picker color default value
  //
  // Used to set the default value of the picker color

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 22.01.20, 09:04:29
	  // ----------------------------------------------------
	  // Method: setPickerColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$value)
C_LONGINT:C283($0)

$value:=$1

If ($value="") | ($value="none")
	$0:=16777215
Else 
	If (Position:C15("#";$value;1)=1)
		$0:=hexa2dec ($value)
	Else 
		If ($value="@:@")  //remove opacity to avoid beep from the SVG method
			$opacity_pos:=Position:C15(":";$value)
			$value:=Substring:C12($value;1;$opacity_pos-1)
		End if 
		$0:=SVG_Get_named_color_value ($value)
	End if 
End if 