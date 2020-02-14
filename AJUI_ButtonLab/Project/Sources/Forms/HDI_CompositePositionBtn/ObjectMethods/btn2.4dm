
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btn2:=New AJUI_Button 
		
		Lab_SetCompositeBtn (Form:C1466.btn2;"btn2")
		
		  //default
		Form:C1466.btn2.CompPicturePosition(AJUI_btn_default;"top")
		Form:C1466.btn2.CompPictSizeAllocation(AJUI_btn_default;50)
		
End case 

Form:C1466.btn2.Draw()