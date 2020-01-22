
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.btnCancel:=btn_subform 
		Form:C1466.btnCancel.Name("btnCancel")
		Form:C1466.btnCancel.Label(AJUI_btn_default;"Cancel")
		
		
		
	: (Form event code:C388=On Clicked:K2:4)
		
		CALL FORM:C1391(Current form window:C827;"closeSaveTempTip";False:C215)
		
End case 

Form:C1466.btnCancel.Draw()
