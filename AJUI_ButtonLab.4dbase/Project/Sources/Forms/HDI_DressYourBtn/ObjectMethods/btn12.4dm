
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.btn12:=New AJUI_Button 
		Form:C1466.btn12.Name("btn12")
		Form:C1466.btn12.Type("circle")
		
		  //default
		Form:C1466.btn12.BGColor(AJUI_btn_default;"palegreen")
		Form:C1466.btn12.Label(AJUI_btn_default;"BTN 9")
		Form:C1466.btn12.BorderSize(AJUI_btn_default;2)
		Form:C1466.btn12.FontColor(AJUI_btn_default;"blue")
		
		  //hover
		Form:C1466.btn12.BGColor(AJUI_btn_hover;"lime")
		Form:C1466.btn12.Label(AJUI_btn_hover;"On Hover")
		Form:C1466.btn12.BorderSize(AJUI_btn_hover;4)
		Form:C1466.btn12.FontSize(AJUI_btn_hover;18)
		
		  //active
		Form:C1466.btn12.BGColor(AJUI_btn_active;"green")
		Form:C1466.btn12.Label(AJUI_btn_active;"On Click")
		Form:C1466.btn12.BorderSize(AJUI_btn_active;6)
		Form:C1466.btn12.FontSize(AJUI_btn_active;24)
		Form:C1466.btn12.FontColor(AJUI_btn_active;"lightblue")
		
		
End case 


Form:C1466.btn12.Draw()