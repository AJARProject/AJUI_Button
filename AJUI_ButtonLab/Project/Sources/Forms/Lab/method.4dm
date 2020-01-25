$evt:=Form event code:C388
Case of 
	: ($evt=On Load:K2:1)
		C_POINTER:C301($templates_ptr)
		C_OBJECT:C1216($template_obj)
		C_TEXT:C284($templateName)
		
		GOTO OBJECT:C206(*;"")
		
		Form:C1466.btn1.comment:="your comment ..."
		
		C_POINTER:C301($property_ptr;$value_ptr;$category_ptr)
		
		$category_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"category_col")
		ARRAY TEXT:C222($category_ptr->;0)
		COLLECTION TO ARRAY:C1562(Form:C1466.properties;$category_ptr->;"category")
		
		$property_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"property_col")
		ARRAY TEXT:C222($property_ptr->;0)
		COLLECTION TO ARRAY:C1562(Form:C1466.properties;$property_ptr->;"property")
		
		$value_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"value_col")
		ARRAY OBJECT:C1221($value_ptr->;0)
		COLLECTION TO ARRAY:C1562(Form:C1466.properties;$value_ptr->;"value_object")
		
		OBJECT GET COORDINATES:C663(*;"btn1";$left;$top;$right;$bottom)
		Form:C1466.originCoordBtn1:=New object:C1471
		Form:C1466.originCoordBtn1.left:=$left
		Form:C1466.originCoordBtn1.top:=$top
		Form:C1466.originCoordBtn1.right:=$right
		Form:C1466.originCoordBtn1.bottom:=$bottom
		
		OBJECT GET COORDINATES:C663(*;"btn2";$left;$top;$right;$bottom)
		Form:C1466.originCoordBtn2:=New object:C1471
		Form:C1466.originCoordBtn2.left:=$left
		Form:C1466.originCoordBtn2.top:=$top
		Form:C1466.originCoordBtn2.right:=$right
		Form:C1466.originCoordBtn2.bottom:=$bottom
		
		OBJECT GET COORDINATES:C663(*;"btn3";$left;$top;$right;$bottom)
		Form:C1466.originCoordBtn3:=New object:C1471
		Form:C1466.originCoordBtn3.left:=$left
		Form:C1466.originCoordBtn3.top:=$top
		Form:C1466.originCoordBtn3.right:=$right
		Form:C1466.originCoordBtn3.bottom:=$bottom
		
		OBJECT GET COORDINATES:C663(*;"btn4";$left;$top;$right;$bottom)
		Form:C1466.originCoordBtn4:=New object:C1471
		Form:C1466.originCoordBtn4.left:=$left
		Form:C1466.originCoordBtn4.top:=$top
		Form:C1466.originCoordBtn4.right:=$right
		Form:C1466.originCoordBtn4.bottom:=$bottom
		
		OBJECT GET COORDINATES:C663(*;"btn5";$left;$top;$right;$bottom)
		Form:C1466.originCoordBtn5:=New object:C1471
		Form:C1466.originCoordBtn5.left:=$left
		Form:C1466.originCoordBtn5.top:=$top
		Form:C1466.originCoordBtn5.right:=$right
		Form:C1466.originCoordBtn5.bottom:=$bottom
		
		OBJECT GET COORDINATES:C663(*;"btn6";$left;$top;$right;$bottom)
		Form:C1466.originCoordBtn6:=New object:C1471
		Form:C1466.originCoordBtn6.left:=$left
		Form:C1466.originCoordBtn6.top:=$top
		Form:C1466.originCoordBtn6.right:=$right
		Form:C1466.originCoordBtn6.bottom:=$bottom
		
		ARRAY POINTER:C280($_hierarchy;0)
		APPEND TO ARRAY:C911($_hierarchy;$category_ptr)
		APPEND TO ARRAY:C911($_hierarchy;$property_ptr)
		
		
		LISTBOX SET HIERARCHY:C1098(*;"LB_properties";True:C214;$_hierarchy)
		OBJECT SET RGB COLORS:C628(*;"category_col";0x0000;0x00B0B0B0)
		OBJECT SET FONT STYLE:C166(*;"category_col";Bold:K14:2)
		OBJECT SET VISIBLE:C603(*;"property_col";False:C215)
		
		$templates_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"templates_list")
		If (Size of array:C274($templates_ptr->)>0)
			$templates_ptr->:=1
			$templateName:=$templates_ptr->{1}
			$icon:=getTLocIcon ($templates_ptr->{$templates_ptr->})
			$templateName:=Substring:C12($templateName;1;Length:C16($templateName)-4)
			$template_obj:=New object:C1471("templateName";$templateName;"templatePath";getTlocPath ($templateName+$icon))
			Form:C1466.btn1:=New AJUI_Button ($template_obj)
			Form:C1466.btn1.Name("btn1")
			Form:C1466.btn2:=OB Copy:C1225(Form:C1466.btn1)
			Form:C1466.btn2.ResetAllStates()
			Form:C1466.btn2.Name("btn2")
			Form:C1466.btn3:=OB Copy:C1225(Form:C1466.btn1)
			Form:C1466.btn3.ResetAllStates()
			Form:C1466.btn3.Name("btn3")
			Form:C1466.btn4:=OB Copy:C1225(Form:C1466.btn1)
			Form:C1466.btn4.ResetAllStates()
			Form:C1466.btn4.Name("btn4")
			Form:C1466.btn5:=OB Copy:C1225(Form:C1466.btn1)
			Form:C1466.btn5.ResetAllStates()
			Form:C1466.btn5.Name("btn5")
			Form:C1466.btn6:=OB Copy:C1225(Form:C1466.btn1)
			Form:C1466.btn6.ResetAllStates()
			Form:C1466.btn6.Name("btn6")
			Form:C1466.currentBtn:=OB Copy:C1225(Form:C1466.btn1)
		End if 
		
		Form:C1466.currentState:=AJUI_btn_default
		formulasGetValues 
		formulasSetValues 
		REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
		refresh 
		redrawBtn 
		
		
		
	: ($evt=On Data Change:K2:15)
		redrawBtn 
		
	: ($evt=On Timer:K2:25)
		formulasGetValues 
		REDRAW:C174(OBJECT Get pointer:C1124(Object named:K67:5;"LB_properties")->)
		redrawBtn 
		SET TIMER:C645(0)
End case 

