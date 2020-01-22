
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn9:=New AJUI_Button 
		Form:C1466.btn9.Name("btn9")
		Form:C1466.btn9.Type("circle")
		
		  //default
		Form:C1466.btn9.BGColor(AJUI_btn_default;"palegreen")
		Form:C1466.btn9.Label(AJUI_btn_default;"BTN 9")
		Form:C1466.btn9.BorderSize(AJUI_btn_default;2)
		Form:C1466.btn9.FontColor(AJUI_btn_default;"blue")
		
		  //hover
		Form:C1466.btn9.BGColor(AJUI_btn_hover;"lime")
		Form:C1466.btn9.Label(AJUI_btn_hover;"On Hover")
		Form:C1466.btn9.BorderSize(AJUI_btn_hover;4)
		Form:C1466.btn9.FontSize(AJUI_btn_hover;18)
		
		  //active
		Form:C1466.btn9.BGColor(AJUI_btn_active;"green")
		Form:C1466.btn9.Label(AJUI_btn_active;"On Click")
		Form:C1466.btn9.BorderSize(AJUI_btn_active;6)
		Form:C1466.btn9.FontSize(AJUI_btn_active;24)
		Form:C1466.btn9.FontColor(AJUI_btn_active;"lightblue")
		
		
End case 


Form:C1466.btn9.Draw()