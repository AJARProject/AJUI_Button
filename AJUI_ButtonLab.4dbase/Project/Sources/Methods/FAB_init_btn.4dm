//%attributes = {}
  // FAB_init_btn

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 25.11.19, 20:33:33
	  // ----------------------------------------------------
	  // Method: FAB_init_btn
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 


C_TEXT:C284($currentBtnName)
$currentBtnName:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: (Form event code:C388=On Load:K2:1)
		  // Load the template 
		C_OBJECT:C1216($template)
		$template:=New object:C1471("templateName";"Blog4D_FAB")
		Form:C1466[$currentBtnName]:=New AJUI_Button ($template)
		Form:C1466[$currentBtnName].Name($currentBtnName)
		Form:C1466[$currentBtnName].Height(AJUI_btn_default;30)
		Form:C1466[$currentBtnName].Width(AJUI_btn_default;30)
		
		Case of 
			: ($currentBtnName="btn_1")
				Form:C1466[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994415---account-avatar-person-profile-user.svg")
				Form:C1466[$currentBtnName].OnClick("btn_1_onClick_cb")
			: ($currentBtnName="btn_2")
				Form:C1466[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994366---friend-group-members-people-team.svg")
				Form:C1466[$currentBtnName].OnClick("btn_2_onClick_cb")
			: ($currentBtnName="btn_3")
				Form:C1466[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994425---camera-interface-lens-photo-photography.svg")
				Form:C1466[$currentBtnName].OnClick("btn_3_onClick_cb")
			: ($currentBtnName="btn_4")
				Form:C1466[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994354---arrow-download-downloading-interface-save.svg")
				Form:C1466[$currentBtnName].OnClick("btn_4_onClick_cb")
			: ($currentBtnName="btn_5")
				Form:C1466[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994374---email-inbox-incoming-mail-mailbox-message.svg")
				Form:C1466[$currentBtnName].OnClick("btn_5_onClick_cb")
			: ($currentBtnName="btn_6")
				Form:C1466[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994345---backup-cloud-server-storage-upload.svg")
				Form:C1466[$currentBtnName].OnClick("btn_6_onClick_cb")
				
		End case 
		
	: (Form event code:C388=On Getting Focus:K2:7) & (Form:C1466.FABisActive)
		OBJECT SET SHORTCUT:C1185(*;"clickButton";" ")  // set a space as a shortcut
		
	: (Form event code:C388=On Losing Focus:K2:8) & (Form:C1466.FABisActive)
		OBJECT SET SHORTCUT:C1185(*;"clickButton";"")  // remove the shortcut
		
End case 

Form:C1466[$currentBtnName].Draw()

