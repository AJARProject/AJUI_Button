$currentValue:=OBJECT Get pointer:C1124(Object current:K67:2)->

If ($currentValue=1)
	Form:C1466.btn1.CompLinked(True:C214)
	Form:C1466.btn2.CompLinked(True:C214)
	Form:C1466.btn3.CompLinked(True:C214)
	Form:C1466.btn4.CompLinked(True:C214)
	Form:C1466.btn5.CompLinked(True:C214)
	Form:C1466.btn6.CompLinked(True:C214)
	
	
Else 
	Form:C1466.btn1.CompLinked(False:C215)
	Form:C1466.btn2.CompLinked(False:C215)
	Form:C1466.btn3.CompLinked(False:C215)
	Form:C1466.btn4.CompLinked(False:C215)
	Form:C1466.btn5.CompLinked(False:C215)
	Form:C1466.btn6.CompLinked(False:C215)
	
End if 
Form:C1466.btnSave.Enable(True:C214)
Form:C1466.btnSave.Draw()

redrawBtn 
