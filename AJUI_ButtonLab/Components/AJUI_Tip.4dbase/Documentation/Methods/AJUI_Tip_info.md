<!-- AJUI_Tip_info ( ) -> version -->


## Description

Show the version info of the component.

```4d
  AJUI_Tip_info ( ) -> version
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| version | text | out | version info of the component |

## Example

```4d
  C_String($version)

  $version:= AJUI_Tip_info () //AJUI Tip (v18) : 1.6.1-Build42
```
