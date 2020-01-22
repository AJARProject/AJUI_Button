//%attributes = {}
  // loadPropertiesCollections ( ) -> return
  //
  // $lab : (object) (return) listbox content
  //
  // Init listbox structure and content

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 14.08.19, 09:47:41
	  // ----------------------------------------------------
	  // Method: loadPropertiesCollections
	  // Description
	  //
	  // this method initializes in a collection the structure of the listbox (advanced listbox) 
	  // by associating the properties and their formulas associated with the states. The hierarchy is also defined via the category.
	  //
	  // With the advanced listbox options of 4D, we can define the type and the presentation of the content of each line. For example, we use the atlernative button for the color properties.
	  // For more details see : https://doc.4d.com/4Dv17R5/4D/17-R5/List-box-advanced-features.200-4166715.en.html
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($0;$lab)

$lab:=New object:C1471
$lab.properties:=New collection:C1472()


  //BORDER category
$lab.properties.push(New object:C1471("category";"Border";"property";"color";"formula";"BorderColor";"value_object";New object:C1471("value";"black";"valueType";"text";"alternateButton";True:C214)))
$lab.properties.push(New object:C1471("category";"Border";"property";"size";"formula";"BorderSize";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))


  //BOX category
$lab.properties.push(New object:C1471("category";"Box";"property";"bgPrimaryColor";"formula";"BGColor";"value_object";New object:C1471("value";"black";"valueType";"text";"alternateButton";True:C214)))
$lab.properties.push(New object:C1471("category";"Box";"property";"cornerRadius";"formula";"CornerRadius";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))
$lab.properties.push(New object:C1471("category";"Box";"property";"height";"formula";"Height";"value_object";New object:C1471("value";0;"valueType";"integer";"min";-1)))
$lab.properties.push(New object:C1471("category";"Box";"property";"width";"formula";"Width";"value_object";New object:C1471("value";0;"valueType";"integer";"min";-1)))

  //COMPOSITE category
$lab.properties.push(New object:C1471("category";"Composite";"property";"bgSecondaryColor";"formula";"BGSecondaryColor";"value_object";New object:C1471("value";"black";"valueType";"text";"alternateButton";True:C214)))
$lab.properties.push(New object:C1471("category";"Composite";"property";"padding";"formula";"CompPadding";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))
ARRAY TEXT:C222($_pictPos;0)
APPEND TO ARRAY:C911($_pictPos;"left")
APPEND TO ARRAY:C911($_pictPos;"right")
APPEND TO ARRAY:C911($_pictPos;"top")
APPEND TO ARRAY:C911($_pictPos;"bottom")
$pictPos_obj:=New object:C1471("value";"left";"valueType";"text")
OB SET ARRAY:C1227($pictPos_obj;"requiredList";$_pictPos)
$lab.properties.push(New object:C1471("category";"Composite";"property";"picturePosition";"formula";"CompPicturePosition";"value_object";$pictPos_obj))
$lab.properties.push(New object:C1471("category";"Composite";"property";"pictSizeAllocation";"formula";"CompPictSizeAllocation";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0)))
ARRAY TEXT:C222($_textAlign;0)
APPEND TO ARRAY:C911($_textAlign;"left")
APPEND TO ARRAY:C911($_textAlign;"center")
APPEND TO ARRAY:C911($_textAlign;"right")
$textAlign_obj:=New object:C1471("value";"center";"valueType";"text")
OB SET ARRAY:C1227($textAlign_obj;"requiredList";$_textAlign)
$lab.properties.push(New object:C1471("category";"Composite";"property";"textAlign";"formula";"CompTextAlign";"value_object";$textAlign_obj))


  //PICTURE category
$lab.properties.push(New object:C1471("category";"Picture";"property";"height";"formula";"PictureHeight";"value_object";New object:C1471("value";0;"valueType";"integer";"min";-1)))
$lab.properties.push(New object:C1471("category";"Picture";"property";"width";"formula";"PictureWidth";"value_object";New object:C1471("value";0;"valueType";"integer";"min";-1)))
$lab.properties.push(New object:C1471("category";"Picture";"property";"opacity";"formula";"PictureOpacity";"value_object";New object:C1471("value";100;"valueType";"integer";"min";0;"max";100)))
$lab.properties.push(New object:C1471("category";"Picture";"property";"path";"formula";"PicturePath";"value_object";New object:C1471("value";"";"valueType";"text";"alternateButton";True:C214)))
$lab.properties.push(New object:C1471("category";"Picture";"property";"ratio";"formula";"PictureRatio";"value_object";New object:C1471("value";0;"valueType";"real";"min";0)))
$lab.properties.push(New object:C1471("category";"Picture";"property";"colorToReplace";"formula";"ColorToReplace";"value_object";New object:C1471("value";"";"valueType";"text";"alternateButton";True:C214)))
$lab.properties.push(New object:C1471("category";"Picture";"property";"replacingColor";"formula";"ReplacingColor";"value_object";New object:C1471("value";"";"valueType";"text";"alternateButton";True:C214)))
$lab.properties.push(New object:C1471("category";"Picture";"property";"scale";"formula";"PictureScale";"value_object";New object:C1471("value";0;"valueType";"integer";"min";0;"max";100)))



  //TEXT category
$lab.properties.push(New object:C1471("category";"Text";"property";"fontColor";"formula";"FontColor";"value_object";New object:C1471("value";"black";"valueType";"text";"alternateButton";True:C214)))
ARRAY TEXT:C222($_fontName;0)
FONT LIST:C460($_fontName)
$fontName_obj:=New object:C1471("value";"Arial";"valueType";"text")
OB SET ARRAY:C1227($fontName_obj;"choiceList";$_fontName)
$lab.properties.push(New object:C1471("category";"Text";"property";"fontName";"formula";"FontName";"value_object";$fontName_obj))
$lab.properties.push(New object:C1471("category";"Text";"property";"fontSize";"formula";"FontSize";"value_object";New object:C1471("value";12;"valueType";"integer";"min";1)))
ARRAY TEXT:C222($_textStyle;0)
APPEND TO ARRAY:C911($_textStyle;"none")
APPEND TO ARRAY:C911($_textStyle;"bold")
APPEND TO ARRAY:C911($_textStyle;"italic")
APPEND TO ARRAY:C911($_textStyle;"underline")
APPEND TO ARRAY:C911($_textStyle;"strikethrough")
$fontStyle_obj:=New object:C1471("value";"none";"valueType";"text")
OB SET ARRAY:C1227($fontStyle_obj;"requiredList";$_textStyle)
$lab.properties.push(New object:C1471("category";"Text";"property";"fontStyle";"formula";"FontStyle";"value_object";$fontStyle_obj))
$lab.properties.push(New object:C1471("category";"Text";"property";"label";"formula";"Label";"value_object";New object:C1471("value";"";"valueType";"text")))
$lab.properties.push(New object:C1471("category";"Text";"property";"marginHorizontal";"formula";"TextMarginHorizontal";"value_object";New object:C1471("value";0;"valueType";"integer")))

$lab.defaultValues:=New AJUI_Button 

$0:=$lab