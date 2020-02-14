$evt:=Form event code:C388

Case of 
	: ($evt=On Data Change:K2:15)
		C_POINTER:C301($clockwise_ptr)
		$clockwise_ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
		If ($clockwise_ptr->{$clockwise_ptr->}="True")
			Form:C1466.primary_btn.FABIsClockwise(True:C214)
		Else 
			Form:C1466.primary_btn.FABIsClockwise(False:C215)
		End if 
		Form:C1466.primary_btn.Draw()
End case 