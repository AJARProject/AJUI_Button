//%attributes = {}
  // templatesButtonsEnable ( $enable { ; $name } ) -> return
  //
  // $enable : (boolean) enable/disable
  // $name : (text) (optional) description
  //
  // Disable/Enable buttons, you can specify in the second parameter a button that will be in the opposite status

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 15.08.19, 13:49:17
	  // ----------------------------------------------------
	  // Method: templatesButtonsEnable
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_BOOLEAN:C305($1;$enable)
C_TEXT:C284($2;$name)

$enable:=$1

Form:C1466.btnRename.Enable($enable)
Form:C1466.btnNew.Enable($enable)
Form:C1466.btnSave.Enable($enable)
Form:C1466.btnDelete.Enable($enable)
Form:C1466.btnReload.Enable($enable)
Form:C1466.btnReset.Enable($enable)
Form:C1466.btnProtect.Enable($enable)
Form:C1466.btnDuplicate.Enable($enable)

If (Count parameters:C259=2)
	$name:=$2
	Form:C1466[$name].Enable(Not:C34($enable))
End if 

Form:C1466.btnRename.Draw()
Form:C1466.btnNew.Draw()
Form:C1466.btnSave.Draw()
Form:C1466.btnDelete.Draw()
Form:C1466.btnReload.Draw()
Form:C1466.btnReset.Draw()
Form:C1466.btnProtect.Draw()
Form:C1466.btnDuplicate.Draw()