//%attributes = {}
  // pictfullPath ( $pictPath  ; $folderTempPath  ) -> return
  //
  // $pictPath : (text) picture relative path
  // $folderTempPath : (text) template folder path
  // $pictPath : (text) (return) picture absolute path
  //
  // Return the absolute path to get a picture 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 19.11.19, 13:59:18
	  // ----------------------------------------------------
	  // Method: pictfullPath
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($1;$0;$pictPath)
C_TEXT:C284($2;$folderTempPath)

$pictPath:=Replace string:C233($1;"/";Folder separator:K24:12)
$folderTempPath:=$2

  //template folder case
If ($pictPath="#@")
	$pictPath:=Replace string:C233($pictPath;"#";"")
	$pictPath:=$folderTempPath+$pictPath
Else   //resources folder case
	  //$pictPath:=Get 4D folder(Current resources folder)+$pictPath
End if 

$0:=$pictPath
