$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.btnTempSettings:=newTemplateButton 
		Form:C1466.btnTempSettings.Height(AJUI_btn_default;20)
		Form:C1466.btnTempSettings.Width(AJUI_btn_default;20)
		Form:C1466.btnTempSettings.PictureHeight(AJUI_btn_default;10)
		Form:C1466.btnTempSettings.PictureWidth(AJUI_btn_default;10)
		Form:C1466.btnTempSettings.Name("infoTip")
		Form:C1466.btnTempSettings.Label(AJUI_btn_default;"Settings")
		Form:C1466.btnTempSettings.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994403---cog-gear-options-preferences-settings.svg")
		
		TLoc_TipSubform_init ("infoTip")
		
		
	: ($evt=On Clicked:K2:4)
		
		Form:C1466.tip_sf_details:=OB Copy:C1225(Form:C1466.templateLocPref)
		Form:C1466.tLocTip.Show()
		Form:C1466.btnTempSettings.Enable(False:C215)
End case 

Form:C1466.btnTempSettings.Draw()