C_TEXT:C284($callback)
$evt:=Form event code:C388


Case of 
	: ($evt=On Data Change:K2:15)
		$callback:=OBJECT Get pointer:C1124(Object current:K67:2)->
		Form:C1466.btn1.OnClick($callback)
		
		Form:C1466.btnSave.Enable(True:C214)
		Form:C1466.btnSave.Draw()
End case 