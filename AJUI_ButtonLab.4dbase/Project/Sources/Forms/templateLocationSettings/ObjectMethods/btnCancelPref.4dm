
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.btnCancelPref:=TLoc_btn_pref_init 
		Form:C1466.btnCancelPref.Name("btnCancelPref")
		Form:C1466.btnCancelPref.Label(AJUI_btn_default;"Cancel")
		
		
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.subInfoTip.Hide()
		CALL FORM:C1391(Current form window:C827;"TLoc_closePref")
		
End case 

Form:C1466.btnCancelPref.Draw()
