
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.btnResetPersonal:=TLoc_btn_pref_init 
		Form:C1466.btnResetPersonal.Name("btnResetPersonal")
		Form:C1466.btnResetPersonal.Type("circle")
		Form:C1466.btnResetPersonal.Composition("picture")
		Form:C1466.btnResetPersonal.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994435---ban-banned-block-disabled-stop.svg")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		Form:C1466.subInfoTip.TextLabel("Clear personal folder path")
		Form:C1466.subInfoTip.Show()
	: (Form event code:C388=On Mouse Leave:K2:34)
		Form:C1466.subInfoTip.Hide()
		
		
	: (Form event code:C388=On Mouse Up:K2:58)
		Form:C1466.path_personal:=""
		
End case 

Form:C1466.btnResetPersonal.Draw()
