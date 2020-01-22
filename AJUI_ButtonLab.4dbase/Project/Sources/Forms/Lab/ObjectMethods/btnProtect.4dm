

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btnProtect:=newTemplateButton 
		Form:C1466.btnProtect.Name("btnProtect")
		Form:C1466.btnProtect.Label(AJUI_btn_default;"Protect")
		
		bannerProtectRibbon 
		
		  //check template protect
		If (Form:C1466.btn1.protect)
			Form:C1466.btnProtect.Label(AJUI_btn_default;"Unprotect")
			Form:C1466.btnProtectBanner.DrawBanner()
			OBJECT SET VISIBLE:C603(*;"RectProtect";True:C214)
			Form:C1466.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994412---key-lock-open-password-unlock.svg")
		Else 
			Form:C1466.btnProtect.Label(AJUI_btn_default;"Protect")
			Form:C1466.btnProtectBanner.HideBanner()
			OBJECT SET VISIBLE:C603(*;"RectProtect";False:C215)
			Form:C1466.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994379---lock-padlock-privacy-protection-security.svg")
		End if 
		
		Form:C1466.tipProtect:=tip_templatesButtons ("btnProtect";"")
		
	: (Form event code:C388=On Mouse Enter:K2:33)
		
		If (OBJECT Get enabled:C1079(*;"btnProtect"))
			Form:C1466.tipProtect.TextLabel(Form:C1466.btnProtect.Label(AJUI_btn_default))
			Form:C1466.tipProtect.Show()
		End if 
		
	: (Form event code:C388=On Mouse Leave:K2:34)
		
		Form:C1466.tipProtect.Hide()
		
	: (Form event code:C388=On Clicked:K2:4) & (Macintosh option down:C545)  // alt+clic (Mac) OR Option+clic (Windows)
		
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.tipProtect.Hide()
		
		  //activate/inactive protect
		If (Form:C1466.btn1.protect)
			Form:C1466.btnProtect.Label(AJUI_btn_default;"Protect")
			Form:C1466.btn1.protect:=False:C215
			Form:C1466.btnProtectBanner.HideBanner()
			OBJECT SET VISIBLE:C603(*;"RectProtect";False:C215)
			Form:C1466.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994379---lock-padlock-privacy-protection-security.svg")
			
		Else 
			Form:C1466.btnProtect.Label(AJUI_btn_default;"Unprotect")
			Form:C1466.btn1.protect:=True:C214
			Form:C1466.btnProtectBanner.DrawBanner()
			OBJECT SET VISIBLE:C603(*;"RectProtect";True:C214)
			Form:C1466.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994412---key-lock-open-password-unlock.svg")
			GOTO OBJECT:C206(*;"")
		End if 
		
		Form:C1466.btnSave.Enable(True:C214)
		Form:C1466.btnSave.Draw()
End case 

Form:C1466.btnProtect.Draw()