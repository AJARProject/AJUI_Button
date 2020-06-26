<!-- AJUI_Banner ( ) -> Banner class  -->


## Description

Exposes the Banner class at the host base.

```4d
  AJUI_Banner ( ) -> banner
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| banner | object | out | instance of the Banner class |

## Example

```4d
  C_Object ($banner)
  
  //window banner with text
  $banner:=AJUI_Banner.new ()
  $banner("window")
  $banner.isPicture(False)
  $banner.Message("You're welcome")
  $banner.DrawBanner()
  
    //window banner with picture
  $banner:=AJUI_Banner.new ()
  $banner.Banner("window")
  $banner.isPicture(True)
  $banner.PicturePath("Images"+Folder separator+"yourPicture.png")
  $banner.DrawBanner()
  
    //corner ribbon
  $banner:=AJUI_Banner.new ()
  $banner.Banner("cornerRibbon")
  $banner.Message("Corner Ribbon")
  $banner.BannerPosition("bottom-right")
  $banner.DrawBanner()
  
```