<!-- AJUI_Tip_clearCache ( ) -->


## Description

This method allows you to clean up instances stored internally in an interprocess variable. **This is important** in order to free up memory. We recommend that you use this method when you close the process that contains the form(s) that display tooltips. This method cleans only the instances of the current process.

```4d
  AJUI_Tip_clearCache ( )
```

## Example

```4d
  $evt:=Form event code

  Case of
	: ($evt=On Unload)
      AJUI_Tip_clearCache
  End case
```
