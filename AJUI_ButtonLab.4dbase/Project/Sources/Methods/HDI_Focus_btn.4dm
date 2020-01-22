//%attributes = {}
  // HDI_Focus

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 20.11.19, 11:04:43
	  // ----------------------------------------------------
	  // Method: HDI_Focus
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
		$template:=New object:C1471("templateName";"Blog4D_solidButton")
		Form:C1466[$currentBtnName]:=New AJUI_Button ($template)
		Form:C1466[$currentBtnName].Name($currentBtnName)
		Form:C1466[$currentBtnName].OnClick("onClick_cb")
		Form:C1466[$currentBtnName].Label(AJUI_btn_default;$currentBtnName)
		
	: (Form event code:C388=On Getting Focus:K2:7)
		OBJECT SET SHORTCUT:C1185(*;"clickButton";" ")  // set a space as a shortcut
		
	: (Form event code:C388=On Losing Focus:K2:8)
		OBJECT SET SHORTCUT:C1185(*;"clickButton";"")  // remove the shortcut
		
End case 

Form:C1466[$currentBtnName].Draw()

