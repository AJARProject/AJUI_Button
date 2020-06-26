<!-- JUI_Tip_loadTemplates ( {folderPath} ) -> templates -->


## Description

This method allows you to load all the templates files contained in a directory. It returns all the content of the files as a collection of Tip objects. It is possible to define a target folder path as a parameter, if not, the method will use the default path : resources/AJUI_Tip_Templates/ .

```4d
  AJUI_Tip_loadTemplates ( {folderPath} ) -> templates
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| folderPath | text | in | where to find the template json files |
| templates | collection | out | content of the template files  |

## Example

```4d
   $folder:=Folder($path;fk platform path)
  		
   If ($folder.exists)
	 $templates_col:=AJUI_Tip_loadTemplates ($folder.platformPath)
   End if
```
