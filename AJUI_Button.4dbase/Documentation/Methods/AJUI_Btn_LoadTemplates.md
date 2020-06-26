<!-- AJUI_Btn_LoadTemplates ( {folderPath} ) -> templates -->


## Description

Utility method to get all JSON files from a folder into a collection. You can pass in parameter the path of the folder containing the templates. If this is not the case, the method will search in the default path (.../Resources/AJUI_Button_Templates/).


```4d
  AJUI_Btn_LoadTemplates ( {folderPath} ) -> templates
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| folderPath | text | in | where to find the template json files |
| templates | collection | out | content of the template files  |

## Example

```4d	
   $folder:=Folder($path;fk platform path)
  		
   If ($folder.exists)
	 $templates_col:=AJUI_Btn_LoadTemplates ($folder.platformPath)
   End if
```