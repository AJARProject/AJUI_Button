//%attributes = {}
  // copyPictToFolderTemp ( $folderTemp  ; $currentTempPath  ) 
  //
  // $folderTemp : (text) folder where you will copy the picture
  // $currentTempPath : (text)  current template path
  //
  // Handle the copy of the picture linked to the instance into the same folder

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.11.19, 09:43:42
	  // ----------------------------------------------------
	  // Method: copyPictToFolderTemp
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$folderTemp;$defaultPath)
C_TEXT:C284($2;$currentTempPath)
C_TEXT:C284($hoverPath;$activePath;$disablePath;$focusPath)
C_TEXT:C284($defaultName;$hoverName;$activeName;$disableName;$focusName)
C_OBJECT:C1216($file)
C_BOOLEAN:C305($created)

$folderTemp:=$1
$currentTempPath:=$2

$folder:=Folder:C1567($folderTemp;fk platform path:K87:2)

  //create folder if not exist
If (Not:C34($folder.exists))
	$created:=$folder.create()
End if 

  //default picture
$defaultPath:=Form:C1466.btn1.PicturePath(AJUI_btn_default)
If ($defaultPath#"")
	$file:=File:C1566(pictfullPath ($defaultPath;$currentTempPath);fk platform path:K87:2)
	
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite:K87:5)
		End if 
		Form:C1466.btn1.PicturePath(AJUI_btn_default;"#"+$file.fullName)
		$defaultPath:="#"+$file.fullName
		$defaultName:="@"+$file.name+"@"
	Else 
		ALERT:C41("Picture not found for copying into the template folder (state: default)")
	End if 
End if 

  //hover picture
$hoverPath:=Form:C1466.btn1.PicturePath(AJUI_btn_hover)
If ($hoverPath#"") & ($hoverPath#$defaultPath)
	$file:=File:C1566(pictfullPath ($hoverPath;$currentTempPath);fk platform path:K87:2)
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite:K87:5)
		End if 
		Form:C1466.btn1.PicturePath(AJUI_btn_hover;"#"+$file.fullName)
		$hoverName:="@"+$file.name+"@"
	Else 
		ALERT:C41("Picture not found for copying into the template folder (state: hover)")
	End if 
End if 

  //active picture
$activePath:=Form:C1466.btn1.PicturePath(AJUI_btn_active)
If ($activePath#"") & ($activePath#$defaultPath) & ($activePath#$hoverPath)
	$file:=File:C1566(pictfullPath ($activePath;$currentTempPath);fk platform path:K87:2)
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite:K87:5)
		End if 
		Form:C1466.btn1.PicturePath(AJUI_btn_active;"#"+$file.fullName)
		$activeName:="@"+$file.name+"@"
	Else 
		ALERT:C41("Picture not found for copying into the template folder (state: active)")
	End if 
End if 

  //disable picture
$disablePath:=Form:C1466.btn1.PicturePath(AJUI_btn_disable)
If ($disablePath#"") & ($disablePath#$defaultPath) & ($disablePath#$hoverPath) & ($disablePath#$activePath)
	$file:=File:C1566(pictfullPath ($disablePath;$currentTempPath);fk platform path:K87:2)
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite:K87:5)
		End if 
		Form:C1466.btn1.PicturePath(AJUI_btn_disable;"#"+$file.fullName)
		$disableName:="@"+$file.name+"@"
	Else 
		ALERT:C41("Picture not found for copying into the template folder (state: disable)")
	End if 
End if 

  //focus picture
$focusPath:=Form:C1466.btn1.PicturePath(AJUI_btn_focus)
If ($focusPath#"") & ($focusPath#$defaultPath) & ($focusPath#$hoverPath) & ($focusPath#$activePath) & ($focusPath#$disablePath)
	$file:=File:C1566(pictfullPath ($focusPath;$currentTempPath);fk platform path:K87:2)
	If ($file.exists)
		If ($file.platformPath#($folderTemp+$file.fullName))
			$file.copyTo($folder;fk overwrite:K87:5)
		End if 
		Form:C1466.btn1.PicturePath(AJUI_btn_disable;"#"+$file.fullName)
		$focusName:="@"+$file.name+"@"
	Else 
		ALERT:C41("Picture not found for copying into the template folder (state: disable)")
	End if 
End if 

  //delete old pictures
ARRAY TEXT:C222($_files;0)
DOCUMENT LIST:C474($folderTemp;$_files;Absolute path:K24:14)
For ($i;1;Size of array:C274($_files))
	If ($_files{$i}#"@.json")
		If ($_files{$i}#$defaultName) & ($_files{$i}#$hoverName) & ($_files{$i}#$activeName) & ($_files{$i}#$disableName) & ($_files{$i}#$focusName)
			DELETE DOCUMENT:C159($_files{$i})
		End if 
	End if 
End for 