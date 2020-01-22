$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		OBJECT Get pointer:C1124(Object current:K67:2)->:=1
		
	: ($evt=On Clicked:K2:4)
		FAB_setMainPosition 
End case 