$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.states:=New collection:C1472()
		Form:C1466.states.push("Default")
		Form:C1466.states.push("Hover")
		Form:C1466.states.push("Active")
		Form:C1466.states.push("Disable")
		Form:C1466.states.push("Focus")
		LISTBOX SELECT ROW:C912(*;"StatesLB";1)
		
		
		
	: ($evt=On Selection Change:K2:29)
		  //update state for calls to member functions 
		GOTO OBJECT:C206(*;"")
		$position:=Form:C1466.statePosition
		Case of 
			: ($position=1)
				Form:C1466.currentState:=AJUI_btn_default
			: ($position=2)
				Form:C1466.currentState:=AJUI_btn_hover
			: ($position=3)
				Form:C1466.currentState:=AJUI_btn_active
			: ($position=4)
				Form:C1466.currentState:=AJUI_btn_disable
			: ($position=5)
				Form:C1466.currentState:=AJUI_btn_focus
		End case 
		
		SET TIMER:C645(-1)
		
End case 
