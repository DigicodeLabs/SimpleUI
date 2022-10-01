
// Project: AGK Playground 
// Created: 22-08-23

#option_explicit

SetClearColor(30, 30, 30)
SetErrorMode(2)
SetOrientationAllowed(1, 1, 1, 1)
SetScissor(0, 0, 0, 0)
SetSyncRate(60, 0)
SetViewZoomMode(1)
SetVirtualResolution(1024, 768)
SetWindowAllowResize(1)
SetWindowSize(1024, 768, 0)
SetWindowTitle("SimpleUI Demo")
UseNewDefaultFonts(1)

#constant SCREEN_1 1
#constant SCREEN_2 2

#insert "../SimpleUI.agc"
#insert "../SimpleUI-Defaults.agc"
#insert "../SimpleUI-Icons.agc"

#insert "types.agc"
#insert "globals.agc"
#insert "screen1.agc"
#insert "screen2.agc"

SimpleUIResizeWindowToLastOpenedSize()

do
	select screen
		case SCREEN_1
			Screen1()
		endcase
		case SCREEN_2
			Screen2()
		endcase
	endselect
	
	SimpleUISync()
loop

#include "functions.agc"
