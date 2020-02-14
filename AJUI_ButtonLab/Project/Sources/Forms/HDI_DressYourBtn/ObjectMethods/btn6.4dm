
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn6:=New AJUI_Button 
		Form:C1466.btn6.Name("btn6")
		
		  //default
		Form:C1466.btn6.BGColor(AJUI_btn_default;"magenta")
		Form:C1466.btn6.Label(AJUI_btn_default;"BTN 6")
		Form:C1466.btn6.BorderSize(AJUI_btn_default;2)
		
		  //hover
		Form:C1466.btn6.BGColor(AJUI_btn_hover;"violet")
		Form:C1466.btn6.Label(AJUI_btn_hover;"On Hover")
		Form:C1466.btn6.FontColor(AJUI_btn_hover;"brown")
		Form:C1466.btn6.FontName(AJUI_btn_hover;"MS Sans Sherif")
		Form:C1466.btn6.FontStyle(AJUI_btn_hover;"italic")
		Form:C1466.btn6.BorderColor(AJUI_btn_hover;"lawngreen")
		
		  //active
		Form:C1466.btn6.BGColor(AJUI_btn_active;"darkviolet")
		Form:C1466.btn6.Label(AJUI_btn_active;"On Click")
		Form:C1466.btn6.FontColor(AJUI_btn_active;"aquamarine")
		Form:C1466.btn6.FontStyle(AJUI_btn_active;"bold")
		
		
End case 


Form:C1466.btn6.Draw()