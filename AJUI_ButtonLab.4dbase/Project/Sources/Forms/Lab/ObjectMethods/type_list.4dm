C_POINTER:C301($type_ptr)
C_TEXT:C284($type)

$evt:=Form event code:C388
$type_ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
Case of 
	: ($evt=On Load:K2:1)
		
		APPEND TO ARRAY:C911($type_ptr->;"rectangle")
		APPEND TO ARRAY:C911($type_ptr->;"circle")
		$type_ptr->:=1
	: ($evt=On Data Change:K2:15)
		$type:=$type_ptr->{$type_ptr->}
		Form:C1466.btn1.Type($type)
		Form:C1466.btn2.Type($type)
		Form:C1466.btn3.Type($type)
		Form:C1466.btn4.Type($type)
		Form:C1466.btn5.Type($type)
		Form:C1466.btn6.Type($type)
		
		Form:C1466.btnSave.Enable(True:C214)
		Form:C1466.btnSave.Draw()
		
		redrawBtn 
End case 
