C_POINTER:C301($templates_ptr)

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btnSave:=btn_subform 
		Form:C1466.btnSave.Name("btnSave")
		Form:C1466.btnSave.Label(AJUI_btn_default;"Validate")
		
	: (Form event code:C388=On Clicked:K2:4)
		
		CALL FORM:C1391(Current form window:C827;"closeSaveTempTip";True:C214)
		
		
		
End case 


Form:C1466.btnSave.Draw()





