
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		
		Form:C1466.btnOpenPersonal:=TLoc_btn_pref_init 
		Form:C1466.btnOpenPersonal.Name("btnOpenPersonal")
		Form:C1466.btnOpenPersonal.Type("circle")
		Form:C1466.btnOpenPersonal.Composition("picture")
		Form:C1466.btnOpenPersonal.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994406---eye-on-show-view-visible.svg")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		Form:C1466.subInfoTip.TextLabel("Open personal folder ")
		Form:C1466.subInfoTip.Show()
	: (Form event code:C388=On Mouse Leave:K2:34)
		Form:C1466.subInfoTip.Hide()
		
	: (Form event code:C388=On Mouse Up:K2:58)
		If (Form:C1466.path_personal#"")
			SHOW ON DISK:C922(Form:C1466.path_personal;*)
		End if 
		
		
End case 

Form:C1466.btnOpenPersonal.Draw()
