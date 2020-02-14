
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btn3:=New AJUI_Button 
		
		Lab_SetCompositeBtn (Form:C1466.btn3;"btn3")
		
		  //default
		Form:C1466.btn3.CompPicturePosition(AJUI_btn_default;"bottom")
		Form:C1466.btn3.CompPictSizeAllocation(AJUI_btn_default;50)
		
End case 

Form:C1466.btn3.Draw()