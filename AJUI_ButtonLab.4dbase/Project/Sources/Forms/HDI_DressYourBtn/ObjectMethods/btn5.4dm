
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn5:=New AJUI_Button 
		Form:C1466.btn5.Name("btn5")
		
		  //default
		Form:C1466.btn5.BGColor(AJUI_btn_default;"magenta")
		Form:C1466.btn5.Label(AJUI_btn_default;"BTN 5")
		Form:C1466.btn5.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form:C1466.btn5.BGColor(AJUI_btn_hover;"violet")
		Form:C1466.btn5.Label(AJUI_btn_hover;"On Hover")
		Form:C1466.btn5.FontColor(AJUI_btn_hover;"brown")
		Form:C1466.btn5.FontName(AJUI_btn_hover;"MS Sans Sherif")
		Form:C1466.btn5.FontStyle(AJUI_btn_hover;"italic")
		Form:C1466.btn5.BorderColor(AJUI_btn_hover;"lawngreen")
		
		
		
End case 


Form:C1466.btn5.Draw()