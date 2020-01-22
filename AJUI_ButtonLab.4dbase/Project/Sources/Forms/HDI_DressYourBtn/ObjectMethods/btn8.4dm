
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn8:=New AJUI_Button 
		Form:C1466.btn8.Name("btn8")
		Form:C1466.btn8.Type("circle")
		
		  //default
		Form:C1466.btn8.BGColor(AJUI_btn_default;"palegreen")
		Form:C1466.btn8.Label(AJUI_btn_default;"BTN 8")
		Form:C1466.btn8.BorderSize(AJUI_btn_default;2)
		Form:C1466.btn8.FontColor(AJUI_btn_default;"blue")
		
		  //hover
		Form:C1466.btn8.BGColor(AJUI_btn_hover;"lime")
		Form:C1466.btn8.Label(AJUI_btn_hover;"On Hover")
		Form:C1466.btn8.BorderSize(AJUI_btn_hover;4)
		Form:C1466.btn8.FontSize(AJUI_btn_hover;18)
		
		
		
End case 


Form:C1466.btn8.Draw()