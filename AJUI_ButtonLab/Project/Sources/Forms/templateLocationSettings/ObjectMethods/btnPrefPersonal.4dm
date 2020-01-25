
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btnPrefPersonal:=TLoc_btn_pref_init 
		Form:C1466.btnPrefPersonal.Name("btnPrefPersonal")
		Form:C1466.btnPrefPersonal.Label(AJUI_btn_default;"Personal (P)")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		Form:C1466.subInfoTip.TextLabel("Select a personal folder ")
		Form:C1466.subInfoTip.Show()
	: (Form event code:C388=On Mouse Leave:K2:34)
		Form:C1466.subInfoTip.Hide()
		
	: (Form event code:C388=On Mouse Up:K2:58)
		If (Form:C1466.path_personal="")
			$folder:=Folder:C1567(fk documents folder:K87:21)
			$newPath:=Select folder:C670("Select a shared folder Path";Convert path POSIX to system:C1107($folder.path))
		Else 
			$newPath:=Select folder:C670("Select a shared folder Path";Form:C1466.path_personal)
		End if 
		If ($newPath#"")
			Form:C1466.path_personal:=$newPath
		End if 
End case 

Form:C1466.btnPrefPersonal.Draw()

