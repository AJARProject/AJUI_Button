//%attributes = {}

  // refresh ( ) 
  //
  // Refresh the form objects when we create, choice, delete or reload a template

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 10:03:51
	  // ----------------------------------------------------
	  // Method: refresh
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_POINTER:C301($type_ptr;$composition_ptr)

$type_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"type_list")
$composition_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"composition_list")

  //select template type
$pos:=Find in array:C230($type_ptr->;Form:C1466.btn1.Type())
If ($pos>0)
	$type_ptr->:=$pos
End if 

  //select template composition
$pos:=Find in array:C230($composition_ptr->;Form:C1466.btn1.Composition())
If ($pos>0)
	$composition_ptr->:=$pos
End if 

  //callback button
OBJECT Get pointer:C1124(Object named:K67:5;"callback_click")->:=Form:C1466.btn1.OnClick()
OBJECT Get pointer:C1124(Object named:K67:5;"callback_2click")->:=Form:C1466.btn1.OnDoubleClick()

  //check button linked
If (Form:C1466.btn1.CompLinked())
	OBJECT Get pointer:C1124(Object named:K67:5;"linked")->:=1
Else 
	OBJECT Get pointer:C1124(Object named:K67:5;"linked")->:=0
End if 

  //check button resizable property
If (Not:C34(Form:C1466.btn1.Resizable()))
	OBJECT Get pointer:C1124(Object named:K67:5;"resizable")->:=0
Else 
	OBJECT Get pointer:C1124(Object named:K67:5;"resizable")->:=1
End if 
  // reset the original value
OBJECT SET COORDINATES:C1248(*;"btn1";Form:C1466.originCoordBtn1.left;Form:C1466.originCoordBtn1.top;Form:C1466.originCoordBtn1.right;Form:C1466.originCoordBtn1.bottom)
OBJECT SET COORDINATES:C1248(*;"btn2";Form:C1466.originCoordBtn2.left;Form:C1466.originCoordBtn2.top;Form:C1466.originCoordBtn2.right;Form:C1466.originCoordBtn2.bottom)
OBJECT SET COORDINATES:C1248(*;"btn3";Form:C1466.originCoordBtn3.left;Form:C1466.originCoordBtn3.top;Form:C1466.originCoordBtn3.right;Form:C1466.originCoordBtn3.bottom)
OBJECT SET COORDINATES:C1248(*;"btn4";Form:C1466.originCoordBtn4.left;Form:C1466.originCoordBtn4.top;Form:C1466.originCoordBtn4.right;Form:C1466.originCoordBtn4.bottom)
OBJECT SET COORDINATES:C1248(*;"btn5";Form:C1466.originCoordBtn5.left;Form:C1466.originCoordBtn5.top;Form:C1466.originCoordBtn5.right;Form:C1466.originCoordBtn5.bottom)
OBJECT SET COORDINATES:C1248(*;"btn6";Form:C1466.originCoordBtn6.left;Form:C1466.originCoordBtn6.top;Form:C1466.originCoordBtn6.right;Form:C1466.originCoordBtn6.bottom)

  //check button second color
If (Form:C1466.btn1.CompActiveSecondColor())
	OBJECT Get pointer:C1124(Object named:K67:5;"secondColor")->:=1
Else 
	OBJECT Get pointer:C1124(Object named:K67:5;"secondColor")->:=0
End if 


  // display or not global attributes for composite button
If ($composition_ptr->=3)
	OBJECT SET VISIBLE:C603(*;"linked";True:C214)
	OBJECT SET VISIBLE:C603(*;"secondColor";True:C214)
Else 
	OBJECT SET VISIBLE:C603(*;"linked";False:C215)
	OBJECT SET VISIBLE:C603(*;"secondColor";False:C215)
End if 

  //check template protect
If (Form:C1466.btn1.protect)
	Form:C1466.btnProtect.Label(AJUI_btn_default;"Unprotect")
	Form:C1466.btnProtectBanner.DrawBanner()
	OBJECT SET VISIBLE:C603(*;"RectProtect";True:C214)
	Form:C1466.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994412---key-lock-open-password-unlock.svg")
Else 
	Form:C1466.btnProtect.Label(AJUI_btn_default;"Protect")
	Form:C1466.btnProtectBanner.HideBanner()
	OBJECT SET VISIBLE:C603(*;"RectProtect";False:C215)
	Form:C1466.btnProtect.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994379---lock-padlock-privacy-protection-security.svg")
End if 

Form:C1466.btnProtect.Draw()

