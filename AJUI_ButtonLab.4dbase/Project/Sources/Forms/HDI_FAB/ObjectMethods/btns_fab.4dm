$evt:=Form event code:C388

Case of 
	: ($evt=On Data Change:K2:15)
		C_POINTER:C301($btns_fab_ptr)
		$btns_fab_ptr:=OBJECT Get pointer:C1124(Object current:K67:2)
		FAB_refreshCollection (Num:C11($btns_fab_ptr->{$btns_fab_ptr->}))
		Form:C1466.primary_btn.Draw()
End case 