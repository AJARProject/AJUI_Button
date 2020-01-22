
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.btnPrefGlobal:=TLoc_btn_pref_init 
		Form:C1466.btnPrefGlobal.Name("btnPrefGlobal")
		Form:C1466.btnPrefGlobal.Label(AJUI_btn_default;"Global (G)")
		Form:C1466.btnPrefGlobal.Enable(False:C215)
		
		
End case 

Form:C1466.btnPrefGlobal.Draw()
