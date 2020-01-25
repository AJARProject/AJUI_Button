
C_TEXT:C284($currentBtnName)
$currentBtnName:=OBJECT Get name:C1087(Object current:K67:2)

$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.FABisActive:=False:C215
		
		  // Load the primary button template 
		C_OBJECT:C1216($template)
		$template:=New object:C1471("templateName";"Blog4D_FAB")
		Form:C1466[$currentBtnName]:=New AJUI_Button ($template)
		Form:C1466[$currentBtnName].Name($currentBtnName)
		Form:C1466[$currentBtnName].Height(AJUI_btn_default;40)
		Form:C1466[$currentBtnName].Width(AJUI_btn_default;40)
		Form:C1466[$currentBtnName].FABIsMainButton(True:C214)
		Form:C1466[$currentBtnName].FABIsAnimated(True:C214)
		FAB_refreshCollection (3)
		
		
	: ($evt=On Mouse Up:K2:58)
		If (Form:C1466.FABisActive)
			Form:C1466.FABisActive:=False:C215
			FAB_enableObject (True:C214)
		Else 
			Form:C1466.FABisActive:=True:C214
			FAB_enableObject (False:C215)
		End if 
		
		
		
	: (Form event code:C388=On Getting Focus:K2:7)
		OBJECT SET SHORTCUT:C1185(*;"clickButton";" ")  // set a space as a shortcut
		
	: (Form event code:C388=On Losing Focus:K2:8)
		OBJECT SET SHORTCUT:C1185(*;"clickButton";"")  // remove the shortcut
		
End case 

Form:C1466[$currentBtnName].Draw()
