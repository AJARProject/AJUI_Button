$evt:=Form event code:C388

Case of 
	: ($evt=On Data Change:K2:15)
		C_POINTER:C301($animation_ptr)
		$animation_ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
		If ($animation_ptr->{$animation_ptr->}="True")
			Form:C1466.primary_btn.FABIsAnimated(True:C214)
		Else 
			Form:C1466.primary_btn.FABIsAnimated(False:C215)
		End if 
		Form:C1466.primary_btn.Draw()
End case 