//%attributes = {}
  // FAB_enableObject ( $enable  )
  //
  // $enable : (boolean) enable form objects
  //
  // This method enable/disable the form objects(HDI_FAB). Enable when the secondary button are hidden.

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 18.12.19, 10:33:39
	  // ----------------------------------------------------
	  // Method: FAB_enableObject
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_BOOLEAN:C305($1;$enable)

$enable:=$1

  //main positions
OBJECT SET ENABLED:C1123(*;"top";$enable)
OBJECT SET ENABLED:C1123(*;"top-left";$enable)
OBJECT SET ENABLED:C1123(*;"top-right";$enable)
OBJECT SET ENABLED:C1123(*;"center";$enable)
OBJECT SET ENABLED:C1123(*;"left";$enable)
OBJECT SET ENABLED:C1123(*;"right";$enable)
OBJECT SET ENABLED:C1123(*;"bottom-left";$enable)
OBJECT SET ENABLED:C1123(*;"bottom-right";$enable)
OBJECT SET ENABLED:C1123(*;"bottom";$enable)

  //FAB options
OBJECT SET ENABLED:C1123(*;"btns_fab";$enable)
OBJECT SET ENABLED:C1123(*;"startAngle";$enable)
OBJECT SET ENABLED:C1123(*;"angleToTravel";$enable)
OBJECT SET ENABLED:C1123(*;"radius";$enable)
OBJECT SET ENABLED:C1123(*;"clockwise";$enable)