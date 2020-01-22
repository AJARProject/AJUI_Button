
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.btnValidPref:=TLoc_btn_pref_init 
		Form:C1466.btnValidPref.Name("btnValidPref")
		Form:C1466.btnValidPref.Label(AJUI_btn_default;"Save")
		
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		Form:C1466.subInfoTip.TextLabel("Save preferences")
		Form:C1466.subInfoTip.Show()
	: (Form event code:C388=On Mouse Leave:K2:34)
		Form:C1466.subInfoTip.Hide()
		
		
		
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.subInfoTip.Hide()
		CALL FORM:C1391(Current form window:C827;"TLoc_closePref";True:C214)
		
End case 

Form:C1466.btnValidPref.Draw()
