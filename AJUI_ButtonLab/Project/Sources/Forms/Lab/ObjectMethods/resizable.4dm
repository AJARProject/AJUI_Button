$currentValue:=OBJECT Get pointer:C1124(Object current:K67:2)->

If ($currentValue=1)
	Form:C1466.btn1.Resizable(True:C214)
	Form:C1466.btn2.Resizable(True:C214)
	Form:C1466.btn3.Resizable(True:C214)
	Form:C1466.btn4.Resizable(True:C214)
	Form:C1466.btn5.Resizable(True:C214)
	Form:C1466.btn6.Resizable(True:C214)
	
	
Else 
	Form:C1466.btn1.Resizable(False:C215)
	Form:C1466.btn2.Resizable(False:C215)
	Form:C1466.btn3.Resizable(False:C215)
	Form:C1466.btn4.Resizable(False:C215)
	Form:C1466.btn5.Resizable(False:C215)
	Form:C1466.btn6.Resizable(False:C215)
	OBJECT SET COORDINATES:C1248(*;"btn1";Form:C1466.originCoordBtn1.left;Form:C1466.originCoordBtn1.top;Form:C1466.originCoordBtn1.right;Form:C1466.originCoordBtn1.bottom)
	OBJECT SET COORDINATES:C1248(*;"btn2";Form:C1466.originCoordBtn2.left;Form:C1466.originCoordBtn2.top;Form:C1466.originCoordBtn2.right;Form:C1466.originCoordBtn2.bottom)
	OBJECT SET COORDINATES:C1248(*;"btn3";Form:C1466.originCoordBtn3.left;Form:C1466.originCoordBtn3.top;Form:C1466.originCoordBtn3.right;Form:C1466.originCoordBtn3.bottom)
	OBJECT SET COORDINATES:C1248(*;"btn4";Form:C1466.originCoordBtn4.left;Form:C1466.originCoordBtn4.top;Form:C1466.originCoordBtn4.right;Form:C1466.originCoordBtn4.bottom)
	OBJECT SET COORDINATES:C1248(*;"btn5";Form:C1466.originCoordBtn5.left;Form:C1466.originCoordBtn5.top;Form:C1466.originCoordBtn5.right;Form:C1466.originCoordBtn5.bottom)
	OBJECT SET COORDINATES:C1248(*;"btn6";Form:C1466.originCoordBtn6.left;Form:C1466.originCoordBtn6.top;Form:C1466.originCoordBtn6.right;Form:C1466.originCoordBtn6.bottom)
End if 

Form:C1466.btnSave.Enable(True:C214)
Form:C1466.btnSave.Draw()

redrawBtn 