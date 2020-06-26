<!-- New AJUI_Banner ( ) -> AJUI Banner instance -->


## Description

This method creates an instance of the banner object with his default properties values and formulas.

```4d
  New AJUI_Banner ( ) -> banner
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| banner | object | out | instance of AJUI_Banner with all the member function |

## Example

```4d
  C_Object ($banner)
  
  //window banner with text
  $banner:=New AJUI_Banner
  $banner("window")
  $banner.isPicture(False)
  $banner.Message("You're welcome")
  $banner.DrawBanner()
  
    //window banner with picture
  $banner:=New AJUI_Banner
  $banner.Banner("window")
  $banner.isPicture(True)
  $banner.PicturePath("Images"+Folder separator+"yourPicture.png")
  $banner.DrawBanner()
  
    //corner ribbon
  $banner:=New AJUI_Banner
  $banner.Banner("cornerRibbon")
  $banner.Message("Corner Ribbon")
  $banner.BannerPosition("bottom-right")
  $banner.DrawBanner()
  
```
