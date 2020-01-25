
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btn1:=New AJUI_Button 
		
		Lab_SetCompositeBtn (Form:C1466.btn1;"btn1")
		
		  //default
		Form:C1466.btn1.CompPicturePosition(AJUI_btn_default;"left")
		Form:C1466.btn1.CompPictSizeAllocation(AJUI_btn_default;30)
		
End case 

Form:C1466.btn1.Draw()