
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.btn4:=New AJUI_Button 
		
		Lab_SetCompositeBtn (Form:C1466.btn4;"btn4")
		
		  //default
		Form:C1466.btn4.CompPicturePosition(AJUI_btn_default;"right")
		Form:C1466.btn4.CompPictSizeAllocation(AJUI_btn_default;30)
		
End case 

Form:C1466.btn4.Draw()