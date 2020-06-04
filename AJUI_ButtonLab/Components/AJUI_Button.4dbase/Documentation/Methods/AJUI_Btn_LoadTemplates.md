<!-- AJUI_Btn_LoadTemplates ( ) -> templates -->

# AJUI_Btn_LoadTemplates

## Parameters

 *  (text) (optional) folderPath

## Return value

(collection) content of the template files 

## Description

Utility method to get all JSON files from a folder into a collection. You can pass in parameter the path of the folder containing the templates. If this is not the case, the method will search in the default path (.../Resources/AJUI_Button_Templates/).

## Example

```		
   $folder:=Folder($path;fk platform path)
  		
   If ($folder.exists)
	 $templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
   End if
```