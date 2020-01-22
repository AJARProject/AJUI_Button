C_POINTER:C301($composition_ptr)
C_TEXT:C284($composite)

$evt:=Form event code:C388
$composition_ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
Case of 
	: ($evt=On Load:K2:1)
		APPEND TO ARRAY:C911($composition_ptr->;"text")
		APPEND TO ARRAY:C911($composition_ptr->;"picture")
		APPEND TO ARRAY:C911($composition_ptr->;"composite")
		$composition_ptr->:=1
	: ($evt=On Data Change:K2:15)
		$composite:=$composition_ptr->{$composition_ptr->}
		If ($composition_ptr->=3)
			OBJECT SET VISIBLE:C603(*;"linked";True:C214)
			OBJECT SET VISIBLE:C603(*;"secondColor";True:C214)
		Else 
			OBJECT SET VISIBLE:C603(*;"linked";False:C215)
			OBJECT SET VISIBLE:C603(*;"secondColor";False:C215)
		End if 
		
		Form:C1466.btn1.Composition($composite)
		Form:C1466.btn2.Composition($composite)
		Form:C1466.btn3.Composition($composite)
		Form:C1466.btn4.Composition($composite)
		Form:C1466.btn5.Composition($composite)
		Form:C1466.btn6.Composition($composite)
		
		Form:C1466.btnSave.Enable(True:C214)
		Form:C1466.btnSave.Draw()
		
		redrawBtn 
		
End case 