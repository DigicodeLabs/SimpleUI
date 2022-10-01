// File: screen1.agc
// Created: 22-09-17

function Screen1()
	local categoriesList as integer[200]
	local categoriesPanel as integer
	local categoriesPanelTitle as integer
	local categoriesPanelTitleDivider as integer
	local categoriesScrollView as integer
	local i as integer
	local propertiesList as integer[200]
	local propertiesPanel as integer
	local propertiesPanelTitle as integer
	local propertiesPanelTitleDivider as integer
	local propertiesScrollView as integer
	local sliders as integer[10]
	
	// Initiate Screen. Create SimpleUI widgets
	SimpleUISetScreenInitializing(1)
	
	categoriesPanel = SimpleUICreatePanel()
	categoriesPanelTitle = SimpleUICreateLabel("Categories")
	SimpleUISetLabelSize(categoriesPanelTitle, 20)
	SimpleUISetLabelAlignment(categoriesPanelTitle, 1)
	SimpleUISetLabelBold(categoriesPanelTitle, 1)
	SimpleUISetLabelMarginLTRB(categoriesPanelTitle, 0, 10, 0, 10)
	SimpleUIAddLabelToPanel(categoriesPanel, categoriesPanelTitle)
	
	categoriesPanelTitleDivider = SimpleUICreateDivider()
	SimpleUIAddDividerToPanel(categoriesPanel, categoriesPanelTitleDivider)
	
	categoriesScrollView = SimpleUICreateScrollView()
	SimpleUIAddScrollViewToPanel(categoriesPanel, categoriesScrollView)
	
	counter as integer = 0
	for i = 1 to 109
		if (mod(i, 11) = 0)
			categoriesList[i] = SimpleUICreateDivider()
			SimpleUISetDividerMarginAll(categoriesList[i], 10)
			SimpleUIAddDividerToScrollView(categoriesScrollView, categoriesList[i])
		else
			inc counter
			categoriesList[i] = SimpleUICreateLabel("List Item " + str(counter))
			SimpleUISetLabelSize(categoriesList[i], 20)
			SimpleUIAddLabelToScrollView(categoriesScrollView, categoriesList[i])
		endif
	next
	
	propertiesPanel = SimpleUICreatePanel()
	propertiesPanelTitle = SimpleUICreateLabel("Properties")
	SimpleUISetLabelSize(propertiesPanelTitle, 20)
	SimpleUISetLabelAlignment(propertiesPanelTitle, 1)
	SimpleUISetLabelBold(propertiesPanelTitle, 1)
	SimpleUISetLabelMarginLTRB(propertiesPanelTitle, 0, 10, 0, 10)
	SimpleUIAddLabelToPanel(propertiesPanel, propertiesPanelTitle)
	
	propertiesPanelTitleDivider = SimpleUICreateDivider()
	SimpleUIAddDividerToPanel(propertiesPanel, propertiesPanelTitleDivider)
	
	propertiesScrollView = SimpleUICreateScrollView()
	SimpleUIAddScrollViewToPanel(propertiesPanel, propertiesScrollView)

	counter = 0
	for i = 1 to 109
		if (mod(i, 11) = 0)
			propertiesList[i] = SimpleUICreateDivider()
			SimpleUISetDividerMarginAll(propertiesList[i], 10)
			SimpleUIAddDividerToScrollView(propertiesScrollView, propertiesList[i])
		else
			inc counter
			propertiesList[i] = SimpleUICreateLabel("List Item " + str(counter))
			SimpleUISetLabelSize(propertiesList[i], 20)
			SimpleUIAddLabelToScrollView(propertiesScrollView,propertiesList[i])
		endif
	next
	
	// Manage Screen
	do
		SimpleUIInsertTouchListener()
		
		SimpleUIInsertWindowListener()
		if (SimpleUIGetWindowResized() or SimpleUIGetScreenInitializing())
			SimpleUISetPanelSize(categoriesPanel, 200, GetWindowHeight())
			SimpleUISetPanelPosition(categoriesPanel, 0, 0)
		
			SimpleUISetPanelSize(propertiesPanel, 300, GetWindowHeight() - 100)
			SimpleUISetPanelPosition(propertiesPanel, GetWindowWidth() - 300, 50)
		endif
		
		SimpleUIInsertPanelListener(categoriesPanel)
		SimpleUIInsertPanelListener(propertiesPanel)
		
		print("SCREEN 1")
		print("Press space to switch screens")
		print(ScreenFPS())
		
		if (GetRawKeyPressed(32)) then screen = SCREEN_2
		
		// Change Screen?
		if (screen <> SCREEN_1) then exit

		SimpleUISetScreenInitializing(0)
		SimpleUISync()
	loop
	
	// Delete all SimpleUI created widgets
	SimpleUIDeleteAllWidgets()
endfunction