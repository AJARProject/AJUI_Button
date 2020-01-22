//%attributes = {}
  // btn_subform (  ) -> return
  //
  // $subformButton_obj : (object) (return) btn instance
  //
  // Button for the lab subform

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 20.08.19, 17:36:24
	  // ----------------------------------------------------
	  // Method: btn_subform
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($0;$subformButton_obj)

$subformButton_obj:=New AJUI_Button 

  //global
$subformButton_obj.Type("rectangle")
$subformButton_obj.Composition("text")

  //box
$subformButton_obj.Resizable(False:C215)
$subformButton_obj.BGColor(AJUI_btn_default;"#FFFFFF")
$subformButton_obj.BGColor(AJUI_btn_hover;"#076BFF")
$subformButton_obj.BGColor(AJUI_btn_active;"#005EA8")
$subformButton_obj.BGColor(AJUI_btn_disable;"#FFFFFF:80")

  //border
$subformButton_obj.BorderColor(AJUI_btn_default;"#B7B7B7")
$subformButton_obj.BorderColor(AJUI_btn_disable;"#DDDDDD")
$subformButton_obj.BorderSize(AJUI_btn_default;1)

  //text
$subformButton_obj.FontColor(AJUI_btn_default;"black")
$subformButton_obj.FontColor(AJUI_btn_hover;"white")
$subformButton_obj.FontColor(AJUI_btn_active;"white")
$subformButton_obj.FontColor(AJUI_btn_disable;"grey")
$subformButton_obj.FontSize(AJUI_btn_default;13)
$subformButton_obj.FontSize(AJUI_btn_active;14)

$0:=$subformButton_obj