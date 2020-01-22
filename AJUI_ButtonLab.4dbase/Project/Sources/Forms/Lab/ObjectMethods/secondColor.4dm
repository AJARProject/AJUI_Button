$currentValue:=OBJECT Get pointer:C1124(Object current:K67:2)->

If ($currentValue=1)
	Form:C1466.btn1.CompActiveSecondColor(True:C214)
	Form:C1466.btn2.CompActiveSecondColor(True:C214)
	Form:C1466.btn3.CompActiveSecondColor(True:C214)
	Form:C1466.btn4.CompActiveSecondColor(True:C214)
	Form:C1466.btn5.CompActiveSecondColor(True:C214)
	Form:C1466.btn6.CompActiveSecondColor(True:C214)
	
	
Else 
	Form:C1466.btn1.CompActiveSecondColor(False:C215)
	Form:C1466.btn2.CompActiveSecondColor(False:C215)
	Form:C1466.btn3.CompActiveSecondColor(False:C215)
	Form:C1466.btn4.CompActiveSecondColor(False:C215)
	Form:C1466.btn5.CompActiveSecondColor(False:C215)
	Form:C1466.btn6.CompActiveSecondColor(False:C215)
End if 
Form:C1466.btnSave.Enable(True:C214)
Form:C1466.btnSave.Draw()

redrawBtn 