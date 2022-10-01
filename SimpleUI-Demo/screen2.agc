// File: screen2.agc
// Created: 22-09-17

function Screen2()
	// Initiate Screen. Create SimpleUI widgets

	// Manage Screen
	do
		print("SCREEN 2")
		print("Press space to switch screens")
		print(ScreenFPS())
		
		if (GetRawKeyPressed(32)) then screen = SCREEN_1
		
		// Change Screen?
		if (screen <> SCREEN_2) then exit

		SimpleUISync()
	loop
	
	// Delete all SimpleUI created widgets
	SimpleUIDeleteAllWidgets()
endfunction
