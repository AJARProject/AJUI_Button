<!-- AJUI_Tip_loadTemplates ( ) -> templates -->

# AJUI_Tip_loadTemplates

## Parameters

 *  (text) (optional) folderPath

## Return value

(collection) content of the template files 

## Description

This method allows you to load all the templates files contained in a directory. It returns all the content of the files as a collection of Tip objects. It is possible to define a target folder path as a parameter, if not, the method will use the default path : resources/AJUI_Tip_Templates/ .

## Example

```		
   $folder:=Folder($path;fk platform path)
  		
   If ($folder.exists)
	 $templates_col:=AJUI_Tip_loadTemplates ($folder.platformPath)
   End if
```
