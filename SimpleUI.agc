// File: ui.agc
// Created: 22-08-22

type typeSimpleUIButton
	id as integer
	name$ as string
	background as integer
	container as integer
	icon as integer
	label as integer
	parentID as integer
	parentType$ as string
endtype

type typeSimpleUICheckbox
	id as integer
	name$ as string
	background as integer
	container as integer
	foreground as integer
	label as integer
	parentID as integer
	parentType$ as string
	value as integer
endtype

type typeSimpleUICreatedWidgets
	id as integer
	type$ as string
endtype

type typeSimpleUIDefaults
	dividerColor as typeSimpleUIRGBA
	dividerMargin as typeSimpleUIEdge
	dividerPadding as typeSimpleUIEdge
	dividerThickness# as float
	labelColor as typeSimpleUIRGBA
	labelMargin as typeSimpleUIEdge
	labelPadding as typeSimpleUIEdge
	minWindowSize as typeSimpleUISize
	panelBackgroundColor as typeSimpleUIRGBA
	panelMargin as typeSimpleUIEdge
	panelPadding as typeSimpleUIEdge
	scrollBarColor as typeSimpleUIRGBA
	scrollBarHorizontalBarMinGripWidth# as float
	scrollBarHoverColor as typeSimpleUIRGBA
	scrollBarThickness# as float
	scrollBarVerticalBarMinGripHeight# as float
	scrollViewMargin as typeSimpleUIEdge
	scrollViewPadding as typeSimpleUIEdge
	textColor as typeSimpleUIRGBA
	textSize# as float
endtype

type typeSimpleUIDivider
	id as integer
	name$ as string
	container as integer
	divider as integer
	margin as typeSimpleUIEdge
	padding as typeSimpleUIEdge
	parentID as integer
	parentType$ as string
endtype
	
type typeSimpleUIEdge
	bottom# as float
	left# as float
	right# as float
	top# as float
endtype

type typeSimpleUIEditbox
	id as integer
	name$ as string
	container as integer
	decimals as integer
	editbox as integer
	max as integer
	min as integer
	parentID as integer
	parentType$ as string
	value# as float
endtype

type typeSimpleUIImageLoader
	id as integer
	name$ as string
	container as integer
	image as integer
	imageBackground as integer
	imageBorder as integer
	importButton as typeSimpleUIButton
	label as integer
	parentID as integer
	parentType$ as string
	removeButton as typeSimpleUIButton
	value as integer
endtype

type typeSimpleUIJSONVariables
	variable as string
	value as string
endtype

type typeSimpleUILabel
	id as integer
	name$ as string
	container as integer
	margin as typeSimpleUIEdge
	padding as typeSimpleUIEdge
	parentID as integer
	parentType$ as string
	text as integer
endtype

type typeSimpleUIPanel
	id as integer
	name$ as string
	container as integer
	//buttons as typeSimpleUIButton[]
	//contentHeight# as float
	//contentWidth# as float
	//horizontalScrollBar as integer
	//invisibleDragZone as integer
	margin as typeSimpleUIEdge
	padding as typeSimpleUIEdge
	parentID as integer
	parentType$ as string
	//verticalScrollBar as integer
	widget as typeSimpleUICreatedWidgets[]
endtype

type typeSimpleUIRGBA
	a# as float
	b# as float
	g# as float
	r# as float
endtype

type typeSimpleUIScrollView
	id as integer
	name$ as string
	container as integer
	contentHeight# as float
	contentWidth# as float
	horizontalScrollBar as integer
	invisibleDragZone as integer
	margin as typeSimpleUIEdge
	padding as typeSimpleUIEdge
	parentID as integer
	parentType$ as string
	verticalScrollBar as integer
	widget as typeSimpleUICreatedWidgets[]
endtype

type typeSimpleUISize
	height# as float
	width# as float
endtype

type typeSimpleUISlider
	id as integer
	name$ as string
	activeTrack as integer
	activeTrackFromCentre as integer
	container as integer
	editbox as integer
	handle as integer
	inactiveTrack as integer
	label as integer
	labelText$ as string
	max# as float
	maxEditbox as integer
	maxHandle as integer
	maxValue# as float
	min# as float
	minEditbox as integer
	minHandle as integer
	minValue# as float
	parentID as integer
	parentType$ as string
	rangeSlider as integer
	toLabel as integer
	value# as float
	width# as float
endtype

type typeSpriteIDToSimpleUIID
	id as integer
	uiID as integer
	uiType$ as string
endtype
	
type typeSimpleUIVector2
	x# as float
	y# as float
endtype

type typeSimpleUIWidget
	type$ as string
	button as typeSimpleUIButton
	checkbox as typeSimpleUICheckbox
	divider as typeSimpleUIDivider
	editbox as typeSimpleUIEditbox
	imageLoader as typeSimpleUIImageLoader
	label as typeSimpleUILabel
	//panel as typeSimpleUIPanel
	scrollView as typeSimpleUIScrollView
	slider as typeSimpleUISlider
endtype



global blankSimpleUIVariable as typeSimpleUIJSONVariables
global blankSpriteIDToSimpleUIID as typeSpriteIDToSimpleUIID
global blankSimpleUIButton as typeSimpleUIButton
global blankSimpleUICheckbox as typeSimpleUICheckbox
global blankSimpleUIDivider as typeSimpleUIDivider
global blankSimpleUIEditbox as typeSimpleUIEditbox
global blankSimpleUIImageLoader as typeSimpleUIImageLoader
global blankSimpleUILabel as typeSimpleUILabel
global blankSimpleUIPanel as typeSimpleUIPanel
global blankSimpleUIScrollView as typeSimpleUIScrollView
global blankSimpleUISlider as typeSimpleUISlider
global blankSimpleUIWidget as typeSimpleUIWidget
global simpleUIButtonCollection as typeSimpleUIButton[]
global simpleUICheckboxCollection as typeSimpleUICheckbox[]
global simpleUICreatedWidgets as typeSimpleUICreatedWidgets[]
global simpleUIDefaults as typeSimpleUIDefaults
global simpleUIDividerCollection as typeSimpleUIDivider[]
global simpleUIDragSpriteStartX# as float
global simpleUIDragSpriteStartY# as float
global simpleUIDragViewStartX# as float
global simpleUIDragViewStartY# as float
global simpleUIEditboxCollection as typeSimpleUIEditbox[]
global simpleUIImageLoaderCollection as typeSimpleUIImageLoader[]
global simpleUILabelCollection as typeSimpleUILabel[]
global simpleUILocalVariables as typeSimpleUIJSONVariables[]
if (GetFileExists("simpleUILocalVariables.json")) then simpleUILocalVariables.load("simpleUILocalVariables.json")
global simpleUIPanelCollection as typeSimpleUIPanel[]
global simpleUIScreenInitializing as integer
global simpleUIScrollViewCollection as typeSimpleUIScrollView[]
global simpleUISliderCollection as typeSimpleUISlider[]
global simpleUISpriteHeld as integer
global simpleUISpriteHovered as integer
global simpleUISpriteHoveredParentUIID as integer
global simpleUISpriteHoveredParentUIType$ as string
global simpleUISpriteHoveredUIID as integer
global simpleUISpriteHoveredUIType$ as string
global simpleUISpritePressed as integer
global simpleUISpritePressedParentUIID as integer
global simpleUISpritePressedParentUIType$ as string
global simpleUISpritePressedUIID as integer
global simpleUISpritePressedUIType$ as string
global simpleUISpritePressedX# as float
global simpleUISpritePressedY# as float
global simpleUISpriteReleased as integer
global simpleUIStartX# as float
global simpleUIStartY# as float
global simpleUIViewX# as float
global simpleUIViewY# as float
global simpleUIWindowResized as integer : simpleUIWindowResized = 1
global spriteIDToSimpleUIID as typeSpriteIDToSimpleUIID[1]



function SimpleUIAddCreatedWidget(id as integer, type$ as string)
	local widget as typeSimpleUICreatedWidgets
	
	widget.type$ = type$
	widget.id = id
endfunction widget

function SimpleUIAddDividerToPanel(panelID as integer, dividerID as integer)
	local id as integer
	
	simpleUIPanelCollection[panelID].widget.length = simpleUIPanelCollection[panelID].widget.length + 1
	id = simpleUIPanelCollection[panelID].widget.length
	simpleUIPanelCollection[panelID].widget[id].id = dividerID
	simpleUIPanelCollection[panelID].widget[id].type$ = "Divider"
	
	simpleUIDividerCollection[dividerID].parentID = panelID
	simpleUIDividerCollection[dividerID].parentType$ = "Panel"
endfunction

function SimpleUIAddDividerToScrollView(scrollViewID as integer, dividerID as integer)
	local id as integer
	
	simpleUIScrollViewCollection[scrollViewID].widget.length = simpleUIScrollViewCollection[scrollViewID].widget.length + 1
	id = simpleUIScrollViewCollection[scrollViewID].widget.length
	simpleUIScrollViewCollection[scrollViewID].widget[id].id = dividerID
	simpleUIScrollViewCollection[scrollViewID].widget[id].type$ = "Divider"
	
	simpleUIDividerCollection[dividerID].parentID = scrollViewID
	simpleUIDividerCollection[dividerID].parentType$ = "ScrollView"
endfunction

function SimpleUIAddLabelToPanel(panelID as integer, labelID as integer)
	local id as integer
	
	simpleUIPanelCollection[panelID].widget.length = simpleUIPanelCollection[panelID].widget.length + 1
	id = simpleUIPanelCollection[panelID].widget.length
	simpleUIPanelCollection[panelID].widget[id].id = labelID
	simpleUIPanelCollection[panelID].widget[id].type$ = "Label"
	
	simpleUILabelCollection[labelID].parentID = panelID
	simpleUILabelCollection[labelID].parentType$ = "Panel"
endfunction

function SimpleUIAddLabelToScrollView(scrollViewID as integer, labelID as integer)
	local id as integer
	
	simpleUIScrollViewCollection[scrollViewID].widget.length = simpleUIScrollViewCollection[scrollViewID].widget.length + 1
	id = simpleUIScrollViewCollection[scrollViewID].widget.length
	simpleUIScrollViewCollection[scrollViewID].widget[id].id = labelID
	simpleUIScrollViewCollection[scrollViewID].widget[id].type$ = "Label"
	
	simpleUILabelCollection[labelID].parentID = scrollViewID
	simpleUILabelCollection[labelID].parentType$ = "ScrollView"
endfunction

function SimpleUIAddScrollViewToPanel(panelID as integer, scrollViewID as integer)
	local id as integer
	
	simpleUIPanelCollection[panelID].widget.length = simpleUIPanelCollection[panelID].widget.length + 1
	id = simpleUIPanelCollection[panelID].widget.length
	simpleUIPanelCollection[panelID].widget[id].id = scrollViewID
	simpleUIPanelCollection[panelID].widget[id].type$ = "ScrollView"
	
	simpleUIScrollViewCollection[scrollViewID].parentID = panelID
	simpleUIScrollViewCollection[scrollViewID].parentType$ = "Panel"
endfunction

function SimpleUIAddspriteIDToSimpleUIID(spriteID as integer, uiID as integer, uiType$ as string)
	local id as integer
	
	id = spriteID - 100000
	if (id > spriteIDToSimpleUIID.length) then spriteIDToSimpleUIID.length = id + 1
	
	spriteIDToSimpleUIID[id].id = spriteID
	spriteIDToSimpleUIID[id].uiID = uiID
	spriteIDToSimpleUIID[id].uiType$ = uiType$
endfunction

function SimpleUIClearSpriteIDFromUIID(spriteID)
	local id as integer
	
	id = spriteID - 100000
	
	spriteIDToSimpleUIID[id].id = 0
	spriteIDToSimpleUIID[id].uiID = 0
	spriteIDToSimpleUIID[id].uiType$ = ""
endfunction

function SimpleUICreateDivider()
	local id as integer
	local spriteID as integer
	
	simpleUIDividerCollection.length = simpleUIDividerCollection.length + 1
	id = simpleUIDividerCollection.length
	simpleUIDividerCollection[id].id = id
	
	simpleUICreatedWidgets.insert(SimpleUIAddCreatedWidget(id, "Divider"))

	simpleUIDefaults.dividerThickness# = 1

	SimpleUISetDividerMarginLTRB(id, simpleUIDefaults.dividerMargin.left#, simpleUIDefaults.dividerMargin.top#, simpleUIDefaults.dividerMargin.right#, simpleUIDefaults.dividerMargin.bottom#)
	SimpleUISetDividerPaddingLTRB(id, simpleUIDefaults.dividerPadding.left#, simpleUIDefaults.dividerPadding.top#, simpleUIDefaults.dividerPadding.right#, simpleUIDefaults.dividerPadding.bottom#)
	
	simpleUIDividerCollection[id].container = CreateSprite(0)
	SimpleUIAddspriteIDToSimpleUIID(simpleUIDividerCollection[id].container, id, "Divider")
	SetSpriteColorAlpha(simpleUIDividerCollection[id].container, 0)
	
	simpleUIDividerCollection[id].divider = CreateSprite(0)
	SimpleUIAddspriteIDToSimpleUIID(simpleUIDividerCollection[id].divider, id, "Divider")
	SetSpriteColor(simpleUIDividerCollection[id].divider, simpleUIDefaults.dividerColor.r#, simpleUIDefaults.dividerColor.g#, simpleUIDefaults.dividerColor.b#, simpleUIDefaults.dividerColor.a#)
	SimpleUISetDividerThickness(simpleUIDividerCollection[id].id, simpleUIDefaults.dividerThickness#)
endfunction id

function SimpleUICreateLabel(text$ as string)
	local id as integer
	
	simpleUILabelCollection.length = simpleUILabelCollection.length + 1
	id = simpleUILabelCollection.length
	simpleUILabelCollection[id].id = id
	
	simpleUICreatedWidgets.insert(SimpleUIAddCreatedWidget(id, "Label"))

	SimpleUISetLabelMarginLTRB(id, simpleUIDefaults.labelMargin.left#, simpleUIDefaults.labelMargin.top#, simpleUIDefaults.labelMargin.right#, simpleUIDefaults.labelMargin.bottom#)
	SimpleUISetLabelPaddingLTRB(id, simpleUIDefaults.labelPadding.left#, simpleUIDefaults.labelPadding.top#, simpleUIDefaults.labelPadding.right#, simpleUIDefaults.labelPadding.bottom#)
	
	simpleUILabelCollection[id].container = CreateSprite(0)
	SimpleUIAddspriteIDToSimpleUIID(simpleUILabelCollection[id].container, id, "Label")
	SetSpriteColorAlpha(simpleUILabelCollection[id].container, 0)
	
	simpleUILabelCollection[id].text = CreateText(text$)
	SetTextSize(simpleUILabelCollection[id].text, simpleUIDefaults.textSize#)
	SetTextColor(simpleUILabelCollection[id].text, simpleUIDefaults.labelColor.r#, simpleUIDefaults.labelColor.g#, simpleUIDefaults.labelColor.b#, simpleUIDefaults.labelColor.a#)
endfunction id

function SimpleUICreatePanel()
	local id as integer
	
	simpleUIPanelCollection.length = simpleUIPanelCollection.length + 1
	id = simpleUIPanelCollection.length
	simpleUIPanelCollection[id].id = id
	
	simpleUICreatedWidgets.insert(SimpleUIAddCreatedWidget(id, "Panel"))
	
	SimpleUISetPanelMarginLTRB(id, simpleUIDefaults.panelMargin.left#, simpleUIDefaults.panelMargin.top#, simpleUIDefaults.panelMargin.right#, simpleUIDefaults.panelMargin.bottom#)
	SimpleUISetPanelPaddingLTRB(id, simpleUIDefaults.panelPadding.left#, simpleUIDefaults.panelPadding.top#, simpleUIDefaults.panelPadding.right#, simpleUIDefaults.panelPadding.bottom#)
	
	simpleUIPanelCollection[id].container = CreateSprite(0)
	SimpleUIAddspriteIDToSimpleUIID(simpleUIPanelCollection[id].container, id, "Panel")
	SetSpriteColor(simpleUIPanelCollection[id].container, simpleUIDefaults.panelBackgroundColor.r#, simpleUIDefaults.panelBackgroundColor.g#, simpleUIDefaults.panelBackgroundColor.b#, simpleUIDefaults.panelBackgroundColor.a#)
endfunction id

function SimpleUICreateScrollView()
	local id as integer
	
	simpleUIScrollViewCollection.length = simpleUIScrollViewCollection.length + 1
	id = simpleUIScrollViewCollection.length
	simpleUIScrollViewCollection[id].id = id
	
	simpleUICreatedWidgets.insert(SimpleUIAddCreatedWidget(id, "ScrollView"))
	
	SimpleUISetScrollViewMarginLTRB(id, simpleUIDefaults.scrollViewMargin.left#, simpleUIDefaults.scrollViewMargin.top#, simpleUIDefaults.scrollViewMargin.right#, simpleUIDefaults.scrollViewMargin.bottom#)
	SimpleUISetScrollViewPaddingLTRB(id, simpleUIDefaults.scrollViewPadding.left#, simpleUIDefaults.scrollViewPadding.top#, simpleUIDefaults.scrollViewPadding.right#, simpleUIDefaults.scrollViewPadding.bottom#)
	
	simpleUIScrollViewCollection[id].container = CreateSprite(0)
	SimpleUIAddspriteIDToSimpleUIID(simpleUIScrollViewCollection[id].container, id, "ScrollView")
	SetSpriteColorAlpha(simpleUIScrollViewCollection[id].container, 0)
	SetSpriteDepth(simpleUIScrollViewCollection[id].container, 10)
	
	simpleUIScrollViewCollection[id].invisibleDragZone = CreateSprite(0)
	SimpleUIAddspriteIDToSimpleUIID(simpleUIScrollViewCollection[id].invisibleDragZone, id, "ScrollView")
	SetSpriteColorAlpha(simpleUIScrollViewCollection[id].invisibleDragZone, 0)
	SetSpriteDepth(simpleUIScrollViewCollection[id].invisibleDragZone, GetSpriteDepth(simpleUIScrollViewCollection[id].container) - 1)
	
	simpleUIScrollViewCollection[id].verticalScrollBar = CreateSprite(0)
	SimpleUIAddspriteIDToSimpleUIID(simpleUIScrollViewCollection[id].verticalScrollBar, id, "ScrollView")
	SetSpriteSize(simpleUIScrollViewCollection[id].verticalScrollBar, simpleUIDefaults.scrollBarThickness#, 100)
	SetSpriteColor(simpleUIScrollViewCollection[id].verticalScrollBar, simpleUIDefaults.scrollBarColor.r#, simpleUIDefaults.scrollBarColor.g#, simpleUIDefaults.scrollBarColor.b#, simpleUIDefaults.scrollBarColor.a#)
	SetSpriteDepth(simpleUIScrollViewCollection[id].verticalScrollBar, 1)
	
	simpleUIScrollViewCollection[id].horizontalScrollBar = CreateSprite(0)
	SimpleUIAddspriteIDToSimpleUIID(simpleUIScrollViewCollection[id].horizontalScrollBar, id, "ScrollView")
	SetSpriteSize(simpleUIScrollViewCollection[id].horizontalScrollBar, 100, simpleUIDefaults.scrollBarThickness#)
	SetSpriteColor(simpleUIScrollViewCollection[id].horizontalScrollBar, simpleUIDefaults.scrollBarColor.r#, simpleUIDefaults.scrollBarColor.g#, simpleUIDefaults.scrollBarColor.b#, simpleUIDefaults.scrollBarColor.a#)
	SetSpriteDepth(simpleUIScrollViewCollection[id].horizontalScrollBar, 1)
endfunction id

function SimpleUIDeleteAllWidgets()
	local i as integer
	
	for i = 0 to simpleUICreatedWidgets.length
		select simpleUICreatedWidgets[i].type$
			case "Button"
				SimpleUIDeleteButton(simpleUICreatedWidgets[i].id)
			endcase
			case "Checkbox"
				SimpleUIDeleteCheckbox(simpleUICreatedWidgets[i].id)
			endcase
			case "Divider"
				SimpleUIDeleteDivider(simpleUICreatedWidgets[i].id)
			endcase
			case "Editbox"
				SimpleUIDeleteEditbox(simpleUICreatedWidgets[i].id)
			endcase
			case "ImageLoader"
				SimpleUIDeleteImageLoader(simpleUICreatedWidgets[i].id)
			endcase
			case "Label"
				SimpleUIDeleteLabel(simpleUICreatedWidgets[i].id)
			endcase
			case "Panel"
				SimpleUIDeletePanel(simpleUICreatedWidgets[i].id)
			endcase
			case "ScrollView"
				SimpleUIDeleteScrollView(simpleUICreatedWidgets[i].id)
			endcase
			case "Slider"
				SimpleUIDeleteSlider(simpleUICreatedWidgets[i].id)
			endcase
		endselect
	next
	simpleUIButtonCollection.length = -1
	simpleUICheckboxCollection.length = -1
	simpleUICreatedWidgets.length = -1
	simpleUIDividerCollection.length = -1
	simpleUIEditboxCollection.length = -1
	simpleUIImageLoaderCollection.length = -1
	simpleUILabelCollection.length = -1
	simpleUIPanelCollection.length = -1
	simpleUIScrollViewCollection.length = -1
	simpleUISliderCollection.length = -1
	spriteIDToSimpleUIID.length = -1
endfunction

function SimpleUIDeleteButton(id as integer)
	SimpleUIClearSpriteIDFromUIID(simpleUIButtonCollection[id].background)
	SimpleUIClearSpriteIDFromUIID(simpleUIButtonCollection[id].container)
	SimpleUIClearSpriteIDFromUIID(simpleUIButtonCollection[id].icon)
	DeleteSprite(simpleUIButtonCollection[id].background)
	DeleteSprite(simpleUIButtonCollection[id].container)
	DeleteSprite(simpleUIButtonCollection[id].icon)
	DeleteText(simpleUIButtonCollection[id].label)
endfunction

function SimpleUIDeleteCheckbox(id as integer)
	SimpleUIClearSpriteIDFromUIID(simpleUICheckboxCollection[id].background)
	SimpleUIClearSpriteIDFromUIID(simpleUICheckboxCollection[id].container)
	SimpleUIClearSpriteIDFromUIID(simpleUICheckboxCollection[id].foreground)
	DeleteSprite(simpleUICheckboxCollection[id].background)
	DeleteSprite(simpleUICheckboxCollection[id].container)
	DeleteSprite(simpleUICheckboxCollection[id].foreground)
	DeleteText(simpleUICheckboxCollection[id].label)
endfunction

function SimpleUIDeleteDivider(id as integer)
	SimpleUIClearSpriteIDFromUIID(simpleUIDividerCollection[id].container)
	SimpleUIClearSpriteIDFromUIID(simpleUIDividerCollection[id].divider)
	DeleteSprite(simpleUIDividerCollection[id].container)
	DeleteSprite(simpleUIDividerCollection[id].divider)
endfunction

function SimpleUIDeleteEditbox(id as integer)
	SimpleUIClearSpriteIDFromUIID(simpleUIEditboxCollection[id].container)
	DeleteSprite(simpleUIEditboxCollection[id].container)
	DeleteEditBox(simpleUIEditboxCollection[id].editbox)
endfunction

function SimpleUIDeleteImageLoader(id as integer)
	SimpleUIClearSpriteIDFromUIID(simpleUIImageLoaderCollection[id].container)
	SimpleUIClearSpriteIDFromUIID(simpleUIImageLoaderCollection[id].image)
	SimpleUIClearSpriteIDFromUIID(simpleUIImageLoaderCollection[id].imageBackground)
	SimpleUIClearSpriteIDFromUIID(simpleUIImageLoaderCollection[id].imageBorder)
	DeleteSprite(simpleUIImageLoaderCollection[id].container)
	DeleteSprite(simpleUIImageLoaderCollection[id].image)
	DeleteSprite(simpleUIImageLoaderCollection[id].imageBackground)
	DeleteSprite(simpleUIImageLoaderCollection[id].imageBorder)
	SimpleUIDeleteButton(simpleUIImageLoaderCollection[id].importButton.id)
	DeleteText(simpleUIImageLoaderCollection[id].label)
	SimpleUIDeleteButton(simpleUIImageLoaderCollection[id].removeButton.id)
endfunction

function SimpleUIDeleteLabel(id as integer)
	SimpleUIClearSpriteIDFromUIID(simpleUILabelCollection[id].container)
	DeleteSprite(simpleUILabelCollection[id].container)
	DeleteText(simpleUILabelCollection[id].text)
endfunction

function SimpleUIDeletePanel(id as integer)
	local i as integer
	
	SimpleUIClearSpriteIDFromUIID(simpleUIPanelCollection[id].container)
	DeleteSprite(simpleUIPanelCollection[id].container)
	for i = 0 to simpleUIPanelCollection[id].widget.length
		select simpleUIPanelCollection[id].widget[i].type$
			case "Button"
				SimpleUIDeleteButton(simpleUIPanelCollection[id].widget[i].id)
			endcase
			case "Checkbox"
				SimpleUIDeleteCheckbox(simpleUIPanelCollection[id].widget[i].id)
			endcase
			case "Divider"
				SimpleUIDeleteDivider(simpleUIPanelCollection[id].widget[i].id)
			endcase
			case "Editbox"
				SimpleUIDeleteEditbox(simpleUIPanelCollection[id].widget[i].id)
			endcase
			case "ImageLoader"
				SimpleUIDeleteImageLoader(simpleUIPanelCollection[id].widget[i].id)
			endcase
			case "Label"
				SimpleUIDeleteLabel(simpleUIPanelCollection[id].widget[i].id)
			endcase
			case "ScrollView"
				SimpleUIDeleteScrollView(simpleUIPanelCollection[id].widget[i].id)
			endcase
			case "Slider"
				SimpleUIDeleteSlider(simpleUIPanelCollection[id].widget[i].id)
			endcase
		endselect
	next
endfunction

function SimpleUIDeleteScrollView(id as integer)
	local i as integer
	
	SimpleUIClearSpriteIDFromUIID(simpleUIScrollViewCollection[id].container)
	SimpleUIClearSpriteIDFromUIID(simpleUIScrollViewCollection[id].horizontalScrollBar)
	SimpleUIClearSpriteIDFromUIID(simpleUIScrollViewCollection[id].invisibleDragZone)
	SimpleUIClearSpriteIDFromUIID(simpleUIScrollViewCollection[id].verticalScrollBar)
	DeleteSprite(simpleUIScrollViewCollection[id].container)
	DeleteSprite(simpleUIScrollViewCollection[id].horizontalScrollBar)
	DeleteSprite(simpleUIScrollViewCollection[id].invisibleDragZone)
	DeleteSprite(simpleUIScrollViewCollection[id].verticalScrollBar)
	for i = 0 to simpleUIScrollViewCollection[id].widget.length
		select simpleUIScrollViewCollection[id].widget[i].type$
			case "Button"
				SimpleUIDeleteButton(simpleUIScrollViewCollection[id].widget[i].id)
			endcase
			case "Checkbox"
				SimpleUIDeleteCheckbox(simpleUIScrollViewCollection[id].widget[i].id)
			endcase
			case "Divider"
				SimpleUIDeleteDivider(simpleUIScrollViewCollection[id].widget[i].id)
			endcase
			case "Editbox"
				SimpleUIDeleteEditbox(simpleUIScrollViewCollection[id].widget[i].id)
			endcase
			case "ImageLoader"
				SimpleUIDeleteImageLoader(simpleUIScrollViewCollection[id].widget[i].id)
			endcase
			case "Label"
				SimpleUIDeleteLabel(simpleUIScrollViewCollection[id].widget[i].id)
			endcase
			case "ScrollView"
				SimpleUIDeleteScrollView(simpleUIScrollViewCollection[id].widget[i].id)
			endcase
			case "Slider"
				SimpleUIDeleteSlider(simpleUIScrollViewCollection[id].widget[i].id)
			endcase
		endselect
	next
endfunction

function SimpleUIDeleteSlider(id as integer)
	SimpleUIClearSpriteIDFromUIID(simpleUISliderCollection[id].activeTrack)
	SimpleUIClearSpriteIDFromUIID(simpleUISliderCollection[id].container)
	SimpleUIClearSpriteIDFromUIID(simpleUISliderCollection[id].handle)
	SimpleUIClearSpriteIDFromUIID(simpleUISliderCollection[id].inactiveTrack)
	SimpleUIClearSpriteIDFromUIID(simpleUISliderCollection[id].maxHandle)
	SimpleUIClearSpriteIDFromUIID(simpleUISliderCollection[id].minHandle)
	DeleteSprite(simpleUISliderCollection[id].activeTrack)
	DeleteSprite(simpleUISliderCollection[id].container)
	DeleteEditBox(simpleUISliderCollection[id].editbox)
	DeleteSprite(simpleUISliderCollection[id].handle)
	DeleteSprite(simpleUISliderCollection[id].inactiveTrack)
	DeleteText(simpleUISliderCollection[id].label)
	DeleteEditBox(simpleUISliderCollection[id].maxEditbox)
	DeleteSprite(simpleUISliderCollection[id].maxHandle)
	DeleteEditBox(simpleUISliderCollection[id].minEditbox)
	DeleteSprite(simpleUISliderCollection[id].minHandle)
	DeleteText(simpleUISliderCollection[id].toLabel)
endfunction

function SimpleUIGetLabelHeight(id as integer)
	local height# as float
	
	height# = GetTextTotalHeight(simpleUILabelCollection[id].text)
endfunction height#

function SimpleUIGetLabelWidth(id as integer)
	local width# as float
	
	width# = GetTextTotalWidth(simpleUILabelCollection[id].text)
endfunction width#

function SimpleUIGetLocalVariableValue(variable$ as string)
	local i as integer
	local variableValue$ as string
	
	for i = 0 to simpleUILocalVariables.length
		if (simpleUILocalVariables[i].variable = "") then simpleUILocalVariables.remove(i)
		if (lower(simpleUILocalVariables[i].variable) = lower(variable$))
			variableValue$ = simpleUILocalVariables[i].value
		endif
	next
endfunction variableValue$

function SimpleUIGetPanelHeight(id as integer)
	local height# as float
	
	height# = GetSpriteHeight(simpleUIPanelCollection[id].container)
endfunction height#

function SimpleUIGetPanelWidth(id as integer)
	local width# as float
	
	width# = GetSpriteWidth(simpleUIPanelCollection[id].container)
endfunction width#

function SimpleUIGetPanelX(id as integer)
	local x# as float
	
	x# = GetSpriteX(simpleUIPanelCollection[id].container)
endfunction x#

function SimpleUIGetPanelXByOffset(id as integer)
	local x# as float
	
	x# = GetSpriteXByOffset(simpleUIPanelCollection[id].container)
endfunction x#

function SimpleUIGetPanelY(id as integer)
	local y# as float
	
	y# = GetSpriteY(simpleUIPanelCollection[id].container)
endfunction y#

function SimpleUIGetPanelYByOffset(id as integer)
	local y# as float
	
	y# = GetSpriteYByOffset(simpleUIPanelCollection[id].container)
endfunction y#

function SimpleUIGetScreenInitializing()
endfunction simpleUIScreenInitializing

function SimpleUIGetScrollViewHeight(id as integer)
	local height# as float
	
	height# = GetSpriteHeight(simpleUIScrollViewCollection[id].container)
endfunction height#

function SimpleUIGetScrollViewWidth(id as integer)
	local width# as float
	
	width# = GetSpriteWidth(simpleUIScrollViewCollection[id].container)
endfunction width#

function SimpleUIGetScrollViewX(id as integer)
	local x# as float
	
	x# = GetSpriteX(simpleUIScrollViewCollection[id].container)
endfunction x#

function SimpleUIGetScrollViewXByOffset(id as integer)
	local x# as float
	
	x# = GetSpriteXByOffset(simpleUIScrollViewCollection[id].container)
endfunction x#

function SimpleUIGetScrollViewY(id as integer)
	local y# as float
	
	y# = GetSpriteY(simpleUIScrollViewCollection[id].container)
endfunction y#

function SimpleUIGetScrollViewYByOffset(id as integer)
	local y# as float
	
	y# = GetSpriteYByOffset(simpleUIScrollViewCollection[id].container)
endfunction y#

function SimpleUIGetWindowResized()
endfunction simpleUIWindowResized

function SimpleUIInsertPanelListener(id as integer)
	SimpleUIPositionPanelWidgets(id)
endfunction

function SimpleUIInsertTouchListener()
	local dragSpriteStartX# as float
	local dragSpriteStartY# as float
	local dragViewStartX# as float
	local dragViewStartY# as float
	local dragX# as float
	local dragY# as float
	local gripPosition# as float
	local gripPositionOnTrack# as float
	local gripPositionRatio# as float
	local gripSize# as float
	local scrollViewPosition# as float
	local scrollViewPositionRatio# as float
	local scrollViewScrollAreaSize# as float
	local scrollViewSize# as float
	local spriteDragX# as float
	local spriteDragY# as float
	local spriteHoveredX# as float
	local spriteHoveredY# as float
	local trackScrollAreaSize# as float
	local uiID as integer
	local viewDragX# as float
	local viewDragY# as float
	
	simpleUISpriteHovered = GetSpriteHit(ScreenToWorldX(GetPointerX()), ScreenToWorldY(GetPointerY()))
	if (simpleUISpriteHovered > 0)
		simpleUISpriteHoveredUIID = spriteIDToSimpleUIID[simpleUISpriteHovered - 100000].uiID
		simpleUISpriteHoveredUIType$ = spriteIDToSimpleUIID[simpleUISpriteHovered - 100000].uiType$
		simpleUISpriteHoveredParentUIID = 0
		simpleUISpriteHoveredParentUIType$ = ""
		if (simpleUISpriteHoveredUIType$ = "Label")
			simpleUISpriteHoveredParentUIID = simpleUILabelCollection[simpleUISpriteHoveredUIID].parentID
			simpleUISpriteHoveredParentUIType$ = simpleUILabelCollection[simpleUISpriteHoveredUIID].parentType$
		endif
		if (simpleUISpriteHoveredUIType$ = "ScrollView")
			simpleUISpriteHoveredParentUIID = simpleUIScrollViewCollection[simpleUISpriteHoveredUIID].parentID
			simpleUISpriteHoveredParentUIType$ = simpleUIScrollViewCollection[simpleUISpriteHoveredUIID].parentType$
		endif
		if (simpleUISpriteHoveredUIType$ = "ScrollView")
			spriteHoveredX# = GetSpriteX(simpleUIScrollViewCollection[simpleUISpriteHoveredUIID].invisibleDragZone)
		elseif (simpleUISpriteHoveredParentUIType$ = "ScrollView")
			spriteHoveredX# = GetSpriteX(simpleUIScrollViewCollection[simpleUISpriteHoveredParentUIID].invisibleDragZone)
		else
			spriteHoveredX# = GetSpriteX(simpleUISpriteHovered)
		endif
		if (simpleUISpriteHoveredUIType$ = "ScrollView")
			spriteHoveredY# = GetSpriteY(simpleUIScrollViewCollection[simpleUISpriteHoveredUIID].invisibleDragZone)
		elseif (simpleUISpriteHoveredParentUIType$ = "ScrollView")
			spriteHoveredY# = GetSpriteY(simpleUIScrollViewCollection[simpleUISpriteHoveredParentUIID].invisibleDragZone)
		else
			spriteHoveredY# = GetSpriteY(simpleUISpriteHovered)
		endif
		if (simpleUISpriteHoveredUIType$ = "ScrollView" or simpleUISpriteHoveredParentUIType$ = "ScrollView")
			if (simpleUISpriteHoveredUIType$ = "ScrollView") then uiID = simpleUISpriteHoveredUIID
			if (simpleUISpriteHoveredParentUIType$ = "ScrollView") then uiID = simpleUISpriteHoveredParentUIID
			if (GetRawMouseWheelDelta() <> 0)
				if (GetRawMouseWheelDelta() > 0)
					spriteHoveredY# = spriteHoveredY# + (100 * GetRawMouseWheelDelta())
				elseif (GetRawMouseWheelDelta() < 0)
					spriteHoveredY# = spriteHoveredY# - (100 * abs(GetRawMouseWheelDelta()))
				endif
				if (spriteHoveredY# > GetSpriteY(simpleUIScrollViewCollection[uiID].container)) then spriteHoveredY# = GetSpriteY(simpleUIScrollViewCollection[uiID].container)
				if (spriteHoveredY# + GetSpriteHeight(simpleUIScrollViewCollection[uiID].invisibleDragZone) < GetSpriteY(simpleUIScrollViewCollection[uiID].container) + GetSpriteHeight(simpleUIScrollViewCollection[uiID].container)) then spriteHoveredY# = GetSpriteY(simpleUIScrollViewCollection[uiID].container) + GetSpriteHeight(simpleUIScrollViewCollection[uiID].container) - GetSpriteHeight(simpleUIScrollViewCollection[uiID].invisibleDragZone)
				if (GetSpriteHeight(simpleUIScrollViewCollection[uiID].invisibleDragZone) <= GetSpriteHeight(simpleUIScrollViewCollection[uiID].container)) then spriteHoveredY# = GetSpriteY(simpleUIScrollViewCollection[uiID].container)
				SetSpriteY(simpleUIScrollViewCollection[uiID].invisibleDragZone, spriteHoveredY#)
					
				scrollViewSize# = SimpleUIGetScrollViewHeight(uiID)
				gripSize# = GetSpriteHeight(simpleUIScrollViewCollection[uiID].verticalScrollBar)
				scrollViewScrollAreaSize# = simpleUIScrollViewCollection[uiID].contentHeight# - scrollViewSize# //+ GetSpriteY(panelID)
				scrollViewPosition# = GetSpriteY(simpleUIScrollViewCollection[uiID].invisibleDragZone) - SimpleUIGetScrollViewY(uiID)
				scrollViewPositionRatio# = scrollViewPosition# / scrollViewScrollAreaSize#
				trackScrollAreaSize# = SimpleUIGetScrollViewHeight(uiID) - gripSize#
				gripPositionOnTrack# = (trackScrollAreaSize# * scrollViewPositionRatio#) - SimpleUIGetScrollViewY(uiID)
				SetSpriteY(simpleUIScrollViewCollection[uiID].verticalScrollBar, -gripPositionOnTrack#)
			endif
			if (simpleUISpriteHovered = simpleUIScrollViewCollection[uiID].horizontalScrollBar)
				SetSpriteColor(simpleUIScrollViewCollection[uiID].horizontalScrollBar, simpleUIDefaults.scrollBarHoverColor.r#, simpleUIDefaults.scrollBarHoverColor.g#, simpleUIDefaults.scrollBarHoverColor.b#, simpleUIDefaults.scrollBarHoverColor.a#)
			else
				SetSpriteColor(simpleUIScrollViewCollection[uiID].horizontalScrollBar, simpleUIDefaults.scrollBarColor.r#, simpleUIDefaults.scrollBarColor.g#, simpleUIDefaults.scrollBarColor.b#, simpleUIDefaults.scrollBarColor.a#)	
			endif
			if (simpleUISpriteHovered = simpleUIScrollViewCollection[uiID].verticalScrollBar)
				SetSpriteColor(simpleUIScrollViewCollection[uiID].verticalScrollBar, simpleUIDefaults.scrollBarHoverColor.r#, simpleUIDefaults.scrollBarHoverColor.g#, simpleUIDefaults.scrollBarHoverColor.b#, simpleUIDefaults.scrollBarHoverColor.a#)
			else
				SetSpriteColor(simpleUIScrollViewCollection[uiID].verticalScrollBar, simpleUIDefaults.scrollBarColor.r#, simpleUIDefaults.scrollBarColor.g#, simpleUIDefaults.scrollBarColor.b#, simpleUIDefaults.scrollBarColor.a#)
			endif
		endif	
	endif
	if (GetPointerPressed() = 1)
		simpleUISpritePressed = GetSpriteHit(ScreenToWorldX(GetPointerX()), ScreenToWorldY(GetPointerY()))
		if (simpleUISpritePressed > 0)
			simpleUISpritePressedUIID = spriteIDToSimpleUIID[simpleUISpritePressed - 100000].uiID
			simpleUISpritePressedUIType$ = spriteIDToSimpleUIID[simpleUISpritePressed - 100000].uiType$
			simpleUISpritePressedParentUIID = 0
			simpleUISpritePressedParentUIType$ = ""
			if (simpleUISpritePressedUIType$ = "Label")
				simpleUISpritePressedParentUIID = simpleUILabelCollection[simpleUISpritePressedUIID].parentID
				simpleUISpritePressedParentUIType$ = simpleUILabelCollection[simpleUISpritePressedUIID].parentType$
			endif
			if (simpleUISpritePressedUIType$ = "ScrollView")
				simpleUISpritePressedParentUIID = simpleUIScrollViewCollection[simpleUISpritePressedUIID].parentID
				simpleUISpritePressedParentUIType$ = simpleUIScrollViewCollection[simpleUISpritePressedUIID].parentType$
			endif
			if (simpleUISpritePressed = simpleUIScrollViewCollection[uiID].verticalScrollBar)
				simpleUISpritePressedX# = GetSpriteX(simpleUISpritePressed)
				simpleUISpritePressedY# = GetSpriteY(simpleUISpritePressed)
			elseif (simpleUISpritePressed = simpleUIScrollViewCollection[uiID].horizontalScrollBar)
				simpleUISpritePressedX# = GetSpriteX(simpleUISpritePressed)
				simpleUISpritePressedY# = GetSpriteY(simpleUISpritePressed)
			else
				if (simpleUISpritePressedUIType$ = "ScrollView")
					simpleUISpritePressedX# = GetSpriteX(simpleUIScrollViewCollection[simpleUISpritePressedUIID].invisibleDragZone)
					simpleUISpritePressedY# = GetSpriteY(simpleUIScrollViewCollection[simpleUISpritePressedUIID].invisibleDragZone)
				elseif (simpleUISpritePressedParentUIType$ = "ScrollView")
					simpleUISpritePressedX# = GetSpriteX(simpleUIScrollViewCollection[simpleUISpritePressedParentUIID].invisibleDragZone)
					simpleUISpritePressedY# = GetSpriteY(simpleUIScrollViewCollection[simpleUISpritePressedParentUIID].invisibleDragZone)
				else
					simpleUISpritePressedX# = GetSpriteX(simpleUISpritePressed)
					simpleUISpritePressedY# = GetSpriteY(simpleUISpritePressed)
				endif
			endif
			simpleUIStartX# = GetPointerX()
			simpleUIStartY# = GetPointerY()
			simpleUIViewX# = GetViewOffsetX()
			simpleUIViewY# = GetViewOffsetY()
			simpleUIDragSpriteStartX# = simpleUIStartX# - simpleUISpritePressedX#
			simpleUIDragSpriteStartY# = simpleUIStartY# - simpleUISpritePressedY#
		endif
	else
		if (GetPointerState() = 1)
			simpleUISpriteHeld = GetSpriteHit(ScreenToWorldX(GetPointerX()), ScreenToWorldY(GetPointerY()))
			if (simpleUISpritePressed > 0)
				dragX# = simpleUIStartX# - GetPointerX()
				dragY# = simpleUIStartY# - GetPointerY()
				spriteDragX# = simpleUISpritePressedX# - dragX#
				spriteDragY# = simpleUISpritePressedY# - dragY#
				viewDragX# = simpleUIViewX# + dragX#
				viewDragY# = simpleUIViewY# + dragY#
			endif
			if (simpleUISpritePressedUIType$ = "ScrollView" or simpleUISpritePressedParentUIType$ = "ScrollView")
				if (simpleUISpritePressedUIType$ = "ScrollView") then uiID = simpleUISpritePressedUIID
				if (simpleUISpritePressedParentUIType$ = "ScrollView") then uiID = simpleUISpritePressedParentUIID
			endif
			if (simpleUISpritePressed = simpleUIScrollViewCollection[uiID].horizontalScrollBar or simpleUISpritePressed = simpleUIScrollViewCollection[uiID].verticalScrollBar)
				if (simpleUISpritePressed = simpleUIScrollViewCollection[uiID].horizontalScrollBar)
					dragX# = GetPointerX() - simpleUIDragSpriteStartX#
					SetSpriteX(simpleUISpritePressed, dragX#)
						
					scrollViewSize# = SimpleUIGetScrollViewWidth(uiID)
					gripSize# = GetSpriteWidth(simpleUIScrollViewCollection[uiID].horizontalScrollBar)
					scrollViewScrollAreaSize# = simpleUIScrollViewCollection[uiID].contentWidth# - scrollViewSize#
					trackScrollAreaSize# = scrollViewSize# - gripSize#
					gripPosition# = GetSpriteX(simpleUIScrollViewCollection[uiID].horizontalScrollBar) - SimpleUIGetScrollViewX(uiID)
					gripPositionRatio# = gripPosition# / trackScrollAreaSize#
					scrollViewPosition# = (gripPositionRatio# * scrollViewScrollAreaSize#) - SimpleUIGetScrollViewX(uiID)
					if (scrollViewPosition# < -SimpleUIGetScrollViewX(uiID)) then scrollViewPosition# = -SimpleUIGetScrollViewX(uiID)
					if (scrollViewPosition# > -SimpleUIGetScrollViewX(uiID) + scrollViewScrollAreaSize#) then scrollViewPosition# = -SimpleUIGetScrollViewX(uiID) + scrollViewScrollAreaSize#
					SetSpriteX(simpleUIScrollViewCollection[uiID].invisibleDragZone, -scrollViewPosition#)
					SetSpriteColor(simpleUIScrollViewCollection[uiID].horizontalScrollBar, simpleUIDefaults.scrollBarHoverColor.r#, simpleUIDefaults.scrollBarHoverColor.g#, simpleUIDefaults.scrollBarHoverColor.b#, simpleUIDefaults.scrollBarHoverColor.a#)
				else
					SetSpriteColor(simpleUIScrollViewCollection[uiID].horizontalScrollBar, simpleUIDefaults.scrollBarColor.r#, simpleUIDefaults.scrollBarColor.g#, simpleUIDefaults.scrollBarColor.b#, simpleUIDefaults.scrollBarColor.a#)	
				endif
				if (simpleUISpritePressed = simpleUIScrollViewCollection[uiID].verticalScrollBar)
					dragY# = GetPointerY() - simpleUIDragSpriteStartY#
					SetSpriteY(simpleUISpritePressed, dragY#)
					
					scrollViewSize# = SimpleUIGetScrollViewHeight(uiID)
					gripSize# = GetSpriteHeight(simpleUIScrollViewCollection[uiID].verticalScrollBar)
					scrollViewScrollAreaSize# = simpleUIScrollViewCollection[uiID].contentHeight# - scrollViewSize#
					trackScrollAreaSize# = scrollViewSize# - gripSize#
					gripPosition# = GetSpriteY(simpleUIScrollViewCollection[uiID].verticalScrollBar) - SimpleUIGetScrollViewY(uiID)
					gripPositionRatio# = gripPosition# / trackScrollAreaSize#
					scrollViewPosition# = (gripPositionRatio# * scrollViewScrollAreaSize#) - SimpleUIGetScrollViewY(uiID)
					if (scrollViewPosition# < -SimpleUIGetScrollViewY(uiID)) then scrollViewPosition# = -SimpleUIGetScrollViewY(uiID)
					if (scrollViewPosition# > -SimpleUIGetScrollViewY(uiID) + scrollViewScrollAreaSize#) then scrollViewPosition# = -SimpleUIGetScrollViewY(uiID) + scrollViewScrollAreaSize#
					SetSpriteY(simpleUIScrollViewCollection[uiID].invisibleDragZone, -scrollViewPosition#)
					SetSpriteColor(simpleUIScrollViewCollection[uiID].verticalScrollBar, simpleUIDefaults.scrollBarHoverColor.r#, simpleUIDefaults.scrollBarHoverColor.g#, simpleUIDefaults.scrollBarHoverColor.b#, simpleUIDefaults.scrollBarHoverColor.a#)
				else
					SetSpriteColor(simpleUIScrollViewCollection[uiID].verticalScrollBar, simpleUIDefaults.scrollBarColor.r#, simpleUIDefaults.scrollBarColor.g#, simpleUIDefaults.scrollBarColor.b#, simpleUIDefaults.scrollBarColor.a#)	
				endif
			elseif (simpleUISpritePressedUIType$ = "ScrollView" or simpleUISpritePressedParentUIType$ = "ScrollView")
				if (spriteDragX# > GetSpriteX(simpleUIScrollViewCollection[uiID].container)) then spriteDragX# = GetSpriteX(simpleUIScrollViewCollection[uiID].container)
				if (spriteDragX# + GetSpriteWidth(simpleUIScrollViewCollection[uiID].invisibleDragZone) < GetSpriteX(simpleUIScrollViewCollection[uiID].container) + GetSpriteWidth(simpleUIScrollViewCollection[uiID].container)) then spriteDragX# = GetSpriteX(simpleUIScrollViewCollection[uiID].container) + GetSpriteWidth(simpleUIScrollViewCollection[uiID].container) - GetSpriteWidth(simpleUIScrollViewCollection[uiID].invisibleDragZone)
				if (GetSpriteWidth(simpleUIScrollViewCollection[uiID].invisibleDragZone) <= GetSpriteWidth(simpleUIScrollViewCollection[uiID].container)) then spriteDragX# = GetSpriteX(simpleUIScrollViewCollection[uiID].container)
				SetSpriteX(simpleUIScrollViewCollection[uiID].invisibleDragZone, spriteDragX#)
					
				scrollViewSize# = SimpleUIGetScrollViewWidth(uiID)
				gripSize# = GetSpriteWidth(simpleUIScrollViewCollection[uiID].horizontalScrollBar)
				scrollViewScrollAreaSize# = simpleUIScrollViewCollection[uiID].contentWidth# - scrollViewSize# //+ GetSpriteY(panelID)
				scrollViewPosition# = GetSpriteX(simpleUIScrollViewCollection[uiID].invisibleDragZone) - SimpleUIGetScrollViewX(uiID)
				scrollViewPositionRatio# = scrollViewPosition# / scrollViewScrollAreaSize#
				trackScrollAreaSize# = SimpleUIGetScrollViewWidth(uiID) - gripSize#
				gripPositionOnTrack# = (trackScrollAreaSize# * scrollViewPositionRatio#) - SimpleUIGetScrollViewX(uiID)
				SetSpriteX(simpleUIScrollViewCollection[uiID].horizontalScrollBar, -gripPositionOnTrack#)
					
				if (spriteDragY# > GetSpriteY(simpleUIScrollViewCollection[uiID].container)) then spriteDragY# = GetSpriteY(simpleUIScrollViewCollection[uiID].container)
				if (spriteDragY# + GetSpriteHeight(simpleUIScrollViewCollection[uiID].invisibleDragZone) < GetSpriteY(simpleUIScrollViewCollection[uiID].container) + GetSpriteHeight(simpleUIScrollViewCollection[uiID].container)) then spriteDragY# = GetSpriteY(simpleUIScrollViewCollection[uiID].container) + GetSpriteHeight(simpleUIScrollViewCollection[uiID].container) - GetSpriteHeight(simpleUIScrollViewCollection[uiID].invisibleDragZone)
				if (GetSpriteHeight(simpleUIScrollViewCollection[uiID].invisibleDragZone) <= GetSpriteHeight(simpleUIScrollViewCollection[uiID].container)) then spriteDragY# = GetSpriteY(simpleUIScrollViewCollection[uiID].container)
				SetSpriteY(simpleUIScrollViewCollection[uiID].invisibleDragZone, spriteDragY#)
					
				scrollViewSize# = SimpleUIGetScrollViewHeight(uiID)
				gripSize# = GetSpriteHeight(simpleUIScrollViewCollection[uiID].verticalScrollBar)
				scrollViewScrollAreaSize# = simpleUIScrollViewCollection[uiID].contentHeight# - scrollViewSize# //+ GetSpriteY(panelID)
				scrollViewPosition# = GetSpriteY(simpleUIScrollViewCollection[uiID].invisibleDragZone) - SimpleUIGetScrollViewY(uiID)
				scrollViewPositionRatio# = scrollViewPosition# / scrollViewScrollAreaSize#
				trackScrollAreaSize# = SimpleUIGetScrollViewHeight(uiID) - gripSize#
				gripPositionOnTrack# = (trackScrollAreaSize# * scrollViewPositionRatio#) - SimpleUIGetScrollViewY(uiID)
				SetSpriteY(simpleUIScrollViewCollection[uiID].verticalScrollBar, -gripPositionOnTrack#)
			endif
		endif
		if (GetPointerReleased())
			simpleUISpriteReleased = GetSpriteHit(ScreenToWorldX(GetPointerX()), ScreenToWorldY(GetPointerY()))
				
			simpleUISpritePressed = 0
			simpleUISpritePressedUIID = 0
			simpleUISpritePressedUIType$ = ""
			simpleUISpritePressedParentUIID = 0
			simpleUISpritePressedParentUIType$ = ""
			simpleUISpriteHeld = 0
			simpleUISpriteReleased = 0
		endif
	endif
endfunction

function SimpleUIInsertWindowListener()
	local windowHeight as integer : windowHeight = GetWindowHeight()
	local windowWidth as integer : windowWidth = GetWindowWidth()
	
	if (windowHeight < simpleUIDefaults.minWindowSize.height#)
		windowHeight = simpleUIDefaults.minWindowSize.height#
		simpleUIWindowResized = 1
	endif
	if (windowWidth < simpleUIDefaults.minWindowSize.width#)
		windowWidth = simpleUIDefaults.minWindowSize.width#
		simpleUIWindowResized = 1
	endif
	if (windowHeight <> GetVirtualHeight() or windowWidth <> GetVirtualWidth() or simpleUIWindowResized = 1)
		simpleUIWindowResized = 1
		SetWindowSize(windowWidth, windowHeight, 0)
		SetVirtualResolution(windowWidth, windowHeight)
		SimpleUISaveLocalVariable("windowHeight", str(windowHeight))
		SimpleUISaveLocalVariable("windowWidth", str(windowWidth))
	endif
endfunction

function SimpleUIPositionPanelWidgets(id as integer)
	local height# as float
	local i as integer
	local j as integer
	local widgetID as integer
	local width# as float
	local x# as float
	local y# as float
	
	x# = SimpleUIGetPanelX(id) + simpleUIPanelCollection[id].padding.left#
	y# = SimpleUIGetPanelY(id) + simpleUIPanelCollection[id].padding.top#
	for i = 0 to simpleUIPanelCollection[id].widget.length
		widgetID = simpleUIPanelCollection[id].widget[i].id
		if (simpleUIPanelCollection[id].widget[i].type$ = "Divider")
			width# = SimpleUIGetPanelWidth(id) - simpleUIPanelCollection[id].padding.left# - simpleUIPanelCollection[id].padding.right#
			SimpleUISetDividerWidth(widgetID, width#)
			SimpleUISetDividerPosition(widgetID, x# + simpleUIDividerCollection[widgetID].margin.left#, y# + simpleUIDividerCollection[widgetID].margin.top#)
			y# = y# + GetSpriteHeight(simpleUIDividerCollection[widgetID].container) + simpleUIDividerCollection[widgetID].margin.top# + simpleUIDividerCollection[widgetID].margin.bottom#
		endif
		
		if (simpleUIPanelCollection[id].widget[i].type$ = "Label")
			width# = SimpleUIGetPanelWidth(id) - simpleUIPanelCollection[id].padding.left# - simpleUIPanelCollection[id].padding.right#
			height# = GetTextTotalHeight(simpleUILabelCollection[widgetID].text)
			if (width# < SimpleUIGetLabelWidth(widgetID) + simpleUILabelCollection[widgetID].padding.left# + simpleUILabelCollection[widgetID].padding.right#)
				width# = SimpleUIGetLabelWidth(widgetID) + simpleUILabelCollection[widgetID].padding.left# + simpleUILabelCollection[widgetID].padding.right#
			endif
			if (height# < SimpleUIGetLabelHeight(widgetID) + simpleUILabelCollection[widgetID].padding.top# + simpleUILabelCollection[widgetID].padding.bottom#)
				height# = SimpleUIGetLabelHeight(widgetID) + simpleUILabelCollection[widgetID].padding.top# + simpleUILabelCollection[widgetID].padding.bottom#
			endif
			SetSpriteSize(simpleUILabelCollection[widgetID].container, width#, height#)
			SimpleUISetLabelPosition(widgetID, x# + simpleUILabelCollection[widgetID].margin.left#, y# + simpleUILabelCollection[widgetID].margin.top#)
			y# = y# + GetSpriteHeight(simpleUILabelCollection[widgetID].container) + simpleUILabelCollection[widgetID].margin.top# + simpleUILabelCollection[widgetID].margin.bottom#
		endif
		
		if (simpleUIPanelCollection[id].widget[i].type$ = "ScrollView")
			width# = SimpleUIGetPanelWidth(id) - simpleUIPanelCollection[id].padding.left# - simpleUIPanelCollection[id].padding.right#
			height# = SimpleUIGetPanelHeight(id) - y# + SimpleUIGetPanelY(id)
			SetSpriteSize(simpleUIScrollViewCollection[widgetID].container, width#, height#)
			SimpleUISetScrollViewPosition(simpleUIPanelCollection[id].widget[i].id, x# + simpleUIScrollViewCollection[widgetID].margin.left#, y# + simpleUIScrollViewCollection[widgetID].margin.top#)
			
			width# = simpleUIScrollViewCollection[widgetID].contentWidth# //UIGetPanelWidth(id) - simpleUIPanelCollection[id].padding.left# - simpleUIPanelCollection[id].padding.right#
			height# = simpleUIScrollViewCollection[widgetID].contentHeight#
			SetSpriteSize(simpleUIScrollViewCollection[widgetID].invisibleDragZone, width#, height#)
			SimpleUISetScrollViewPosition(widgetID, x# + simpleUIScrollViewCollection[widgetID].margin.left#, y# + simpleUIScrollViewCollection[widgetID].margin.top#)
			//SetSpritePosition(simpleUIScrollViewCollection[widgetID].invisibleDragZone, x# + simpleUIScrollViewCollection[widgetID].margin.left#, y# + simpleUIScrollViewCollection[widgetID].margin.top#)
			y# = y# + GetSpriteHeight(simpleUIScrollViewCollection[widgetID].invisibleDragZone) + simpleUIScrollViewCollection[widgetID].margin.top# + simpleUIScrollViewCollection[widgetID].margin.bottom#
			
			SimpleUIPositionScrollViewWidgets(simpleUIScrollViewCollection[id].id)
		endif
	next
endfunction

function SimpleUIPositionScrollViewWidgets(id as integer)
	local gripSize# as float
	local gripX# as float
	local gripY# as float
	local height# as float
	local i as integer
	local j as integer
	local scrollViewContentRatio# as float
	local scrollViewSize# as float
	local trackSize# as float
	local widgetID as integer
	local width# as float
	local x# as float
	local y# as float
	
	simpleUIScrollViewCollection[id].contentHeight# = 0
	simpleUIScrollViewCollection[id].contentWidth# = 0
	x# = GetSpriteX(simpleUIScrollViewCollection[id].invisibleDragZone) + simpleUIScrollViewCollection[id].padding.left#
	y# = GetSpriteY(simpleUIScrollViewCollection[id].invisibleDragZone) + simpleUIScrollViewCollection[id].padding.top#
	SetSpriteScissor(simpleUIScrollViewCollection[id].invisibleDragZone, GetSpriteX(simpleUIScrollViewCollection[id].container), GetSpriteY(simpleUIScrollViewCollection[id].container), GetSpriteX(simpleUIScrollViewCollection[id].container) + GetSpriteWidth(simpleUIScrollViewCollection[id].container), GetSpriteY(simpleUIScrollViewCollection[id].container) + GetSpriteHeight(simpleUIScrollViewCollection[id].container))
	for i = 0 to simpleUIScrollViewCollection[id].widget.length
		widgetID = simpleUIScrollViewCollection[id].widget[i].id
		if (simpleUIScrollViewCollection[id].widget[i].type$ = "Divider")
			width# = SimpleUIGetScrollViewWidth(id) - simpleUIDividerCollection[widgetID].margin.left# - simpleUIScrollViewCollection[id].padding.left# - simpleUIDividerCollection[widgetID].margin.right# - simpleUIScrollViewCollection[id].padding.right#
			SimpleUISetDividerWidth(simpleUIScrollViewCollection[id].widget[i].id, width#)
			SimpleUISetDividerPosition(simpleUIScrollViewCollection[id].widget[i].id, x# + simpleUIDividerCollection[widgetID].margin.left#, y# + simpleUIDividerCollection[widgetID].margin.top#)
			SetSpriteDepth(simpleUIDividerCollection[widgetID].container, GetSpriteDepth(simpleUIScrollViewCollection[id].invisibleDragZone) - 1)
			SetSpriteDepth(simpleUIDividerCollection[widgetID].divider, GetSpriteDepth(simpleUIDividerCollection[widgetID].container) - 1)
			SetSpriteScissor(simpleUIDividerCollection[widgetID].container, GetSpriteX(simpleUIScrollViewCollection[id].container), GetSpriteY(simpleUIScrollViewCollection[id].container), GetSpriteX(simpleUIScrollViewCollection[id].container) + GetSpriteWidth(simpleUIScrollViewCollection[id].container), GetSpriteY(simpleUIScrollViewCollection[id].container) + GetSpriteHeight(simpleUIScrollViewCollection[id].container))
			SetSpriteScissor(simpleUIDividerCollection[widgetID].divider, GetSpriteX(simpleUIScrollViewCollection[id].container), GetSpriteY(simpleUIScrollViewCollection[id].container), GetSpriteX(simpleUIScrollViewCollection[id].container) + GetSpriteWidth(simpleUIScrollViewCollection[id].container), GetSpriteY(simpleUIScrollViewCollection[id].container) + GetSpriteHeight(simpleUIScrollViewCollection[id].container))
			simpleUIScrollViewCollection[id].contentHeight# = simpleUIScrollViewCollection[id].contentHeight# + GetSpriteHeight(simpleUIDividerCollection[widgetID].container) + simpleUIDividerCollection[widgetID].margin.top# + simpleUIDividerCollection[widgetID].margin.bottom#
			y# = y# + GetSpriteHeight(simpleUIDividerCollection[widgetID].container) + simpleUIDividerCollection[widgetID].margin.top# + simpleUIDividerCollection[widgetID].margin.bottom#
			if (width# + simpleUIScrollViewCollection[id].padding.left# + simpleUIScrollViewCollection[id].padding.right# > simpleUIScrollViewCollection[id].contentWidth#) then simpleUIScrollViewCollection[id].contentWidth# = width# + simpleUIScrollViewCollection[id].padding.left# + simpleUIScrollViewCollection[id].padding.right#
		endif
		
		if (simpleUIScrollViewCollection[id].widget[i].type$ = "Label")
			width# = SimpleUIGetScrollViewWidth(id) - simpleUILabelCollection[widgetID].margin.left# - simpleUIScrollViewCollection[id].padding.left# - simpleUILabelCollection[widgetID].margin.right# - simpleUIScrollViewCollection[id].padding.right#
			height# = GetTextTotalHeight(simpleUILabelCollection[widgetID].text)
			if (width# < SimpleUIGetLabelWidth(widgetID) + simpleUILabelCollection[widgetID].padding.left# + simpleUILabelCollection[widgetID].padding.right#)
				width# = SimpleUIGetLabelWidth(widgetID) + simpleUILabelCollection[widgetID].padding.left# + simpleUILabelCollection[widgetID].padding.right#
			endif
			if (height# < SimpleUIGetLabelHeight(widgetID) + simpleUILabelCollection[widgetID].padding.top# + simpleUILabelCollection[widgetID].padding.bottom#)
				height# = SimpleUIGetLabelHeight(widgetID) + simpleUILabelCollection[widgetID].padding.top# + simpleUILabelCollection[widgetID].padding.bottom#
			endif
			SetSpriteSize(simpleUILabelCollection[widgetID].container, width#, height#)
			SimpleUISetLabelPosition(simpleUIScrollViewCollection[id].widget[i].id, x# + simpleUILabelCollection[widgetID].margin.left#, y# + simpleUILabelCollection[widgetID].margin.top#)
			SetSpriteDepth(simpleUILabelCollection[widgetID].container, GetSpriteDepth(simpleUIScrollViewCollection[id].invisibleDragZone) - 1)
			SetTextDepth(simpleUILabelCollection[widgetID].text, GetSpriteDepth(simpleUIScrollViewCollection[id].invisibleDragZone) - 1)
			SetTextScissor(simpleUILabelCollection[widgetID].text, GetSpriteX(simpleUIScrollViewCollection[id].container), GetSpriteY(simpleUIScrollViewCollection[id].container), GetSpriteX(simpleUIScrollViewCollection[id].container) + GetSpriteWidth(simpleUIScrollViewCollection[id].container), GetSpriteY(simpleUIScrollViewCollection[id].container) + GetSpriteHeight(simpleUIScrollViewCollection[id].container))
			simpleUIScrollViewCollection[id].contentHeight# = simpleUIScrollViewCollection[id].contentHeight# + GetSpriteHeight(simpleUILabelCollection[widgetID].container) + simpleUILabelCollection[widgetID].margin.top# + simpleUILabelCollection[widgetID].margin.bottom#
			y# = y# + GetSpriteHeight(simpleUILabelCollection[widgetID].container) + simpleUILabelCollection[widgetID].margin.top# + simpleUILabelCollection[widgetID].margin.bottom#
			if (width# + simpleUIScrollViewCollection[id].padding.left# + simpleUIScrollViewCollection[id].padding.right# > simpleUIScrollViewCollection[id].contentWidth#) then simpleUIScrollViewCollection[id].contentWidth# = width# + simpleUIScrollViewCollection[id].padding.left# + simpleUIScrollViewCollection[id].padding.right#
		endif
	next
	
	trackSize# = SimpleUIGetScrollViewHeight(id)
	scrollViewSize# = trackSize#
	scrollViewContentRatio# = scrollViewSize# / simpleUIScrollViewCollection[id].contentHeight#
	gripSize# = trackSize# * scrollViewContentRatio#
	if (gripSize# < simpleUIDefaults.scrollBarVerticalBarMinGripHeight#) then gripSize# = simpleUIDefaults.scrollBarVerticalBarMinGripHeight#
	if (gripSize# >= trackSize#) then gripSize# = 0
	SetSpriteSize(simpleUIScrollViewCollection[id].verticalScrollBar, simpleUIDefaults.scrollBarThickness#, gripSize#)
	
	gripX# = GetSpriteX(simpleUIScrollViewCollection[id].verticalScrollBar)
	if (gripX# <> SimpleUIGetScrollViewX(id) + SimpleUIGetScrollViewWidth(id) - GetSpriteWidth(simpleUIScrollViewCollection[id].verticalScrollBar)) then gripX# = SimpleUIGetScrollViewX(id) + SimpleUIGetScrollViewWidth(id) - GetSpriteWidth(simpleUIScrollViewCollection[id].verticalScrollBar)
	gripY# = GetSpriteY(simpleUIScrollViewCollection[id].verticalScrollBar)
	if (gripY# < SimpleUIGetScrollViewY(id)) then gripY# = SimpleUIGetScrollViewY(id)
	if (gripY# > SimpleUIGetScrollViewY(id) + SimpleUIGetScrollViewHeight(id) - gripSize#) then gripY# = SimpleUIGetScrollViewY(id) + SimpleUIGetScrollViewHeight(id) - gripSize#
	SetSpritePosition(simpleUIScrollViewCollection[id].verticalScrollBar, gripX#, gripY#)
	
	trackSize# = SimpleUIGetScrollViewWidth(id)
	scrollViewSize# = trackSize#
	scrollViewContentRatio# = scrollViewSize# / simpleUIScrollViewCollection[id].contentWidth#
	gripSize# = trackSize# * scrollViewContentRatio#
	if (gripSize# < simpleUIDefaults.scrollBarHorizontalBarMinGripWidth#) then gripSize# = simpleUIDefaults.scrollBarHorizontalBarMinGripWidth#
	if (gripSize# >= trackSize#) then gripSize# = 0
	SetSpriteSize(simpleUIScrollViewCollection[id].horizontalScrollBar, gripSize#, simpleUIDefaults.scrollBarThickness#)
	
	gripX# = GetSpriteX(simpleUIScrollViewCollection[id].horizontalScrollBar)
	if (gripX# < SimpleUIGetScrollViewX(id)) then gripX# = SimpleUIGetScrollViewX(id)
	if (gripX# > SimpleUIGetScrollViewX(id) + SimpleUIGetScrollViewWidth(id) - gripSize#) then gripX# = SimpleUIGetScrollViewX(id) + SimpleUIGetScrollViewWidth(id) - gripSize#
	gripY# = GetSpriteY(simpleUIScrollViewCollection[id].horizontalScrollBar)
	if (gripY# <> SimpleUIGetScrollViewY(id) + SimpleUIGetScrollViewHeight(id) - GetSpriteHeight(simpleUIScrollViewCollection[id].horizontalScrollBar)) then gripY# = SimpleUIGetScrollViewY(id) + SimpleUIGetScrollViewHeight(id) - GetSpriteHeight(simpleUIScrollViewCollection[id].horizontalScrollBar)
	SetSpritePosition(simpleUIScrollViewCollection[id].horizontalScrollBar, gripX#, gripY#)
endfunction

function SimpleUIResizeWindowToLastOpenedSize()
	local lastWindowHeight as integer
	local lastWindowWidth as integer
	
	lastWindowHeight = val(SimpleUIGetLocalVariableValue("windowHeight"))
	lastWindowWidth = val(SimpleUIGetLocalVariableValue("windowWidth"))
	if (lastWindowHeight > 0 and lastWindowHeight >= simpleUIDefaults.minWindowSize.height# and lastWindowWidth > 0 and lastWindowWidth >= simpleUIDefaults.minWindowSize.width#)
		simpleUIWindowResized = 1
		SetWindowSize(lastWindowWidth, lastWindowHeight, 0)
		SetVirtualResolution(lastWindowWidth, lastWindowHeight)
	endif
endfunction
	
function SimpleUISaveLocalVariable(variable$ as string, value$ as string)
	local i as integer
	local indexFound as integer
	
	indexFound = -1
	for i = 0 to simpleUILocalVariables.length
		if (lower(simpleUILocalVariables[i].variable) = lower(variable$))
			indexFound = i
			simpleUILocalVariables[i].value = value$
		endif
	next
	if (indexFound = -1)
		simpleUILocalVariables.insert(blankSimpleUIVariable)
		simpleUILocalVariables[simpleUILocalVariables.length].variable = variable$
		simpleUILocalVariables[simpleUILocalVariables.length].value = value$
	endif
	simpleUILocalVariables.sort()
	simpleUILocalVariables.save("simpleUILocalVariables.json")
endfunction

function SimpleUISetDividerMarginAll(id as integer, margin# as float)
	simpleUIDividerCollection[id].margin.bottom# = margin#
	simpleUIDividerCollection[id].margin.left# = margin#
	simpleUIDividerCollection[id].margin.right# = margin#
	simpleUIDividerCollection[id].margin.top# = margin#
endfunction

function SimpleUISetDividerMarginLTRB(id as integer, left# as float, top# as float, right# as float, bottom# as float)
	simpleUIDividerCollection[id].margin.bottom# = bottom#
	simpleUIDividerCollection[id].margin.left# = left#
	simpleUIDividerCollection[id].margin.right# = right#
	simpleUIDividerCollection[id].margin.top# = top#
endfunction

function SimpleUISetDividerPaddingAll(id as integer, padding# as float)
	simpleUIDividerCollection[id].padding.bottom# = padding#
	simpleUIDividerCollection[id].padding.left# = padding#
	simpleUIDividerCollection[id].padding.right# = padding#
	simpleUIDividerCollection[id].padding.top# = padding#
endfunction

function SimpleUISetDividerPaddingLTRB(id as integer, left# as float, top# as float, right# as float, bottom# as float)
	simpleUIDividerCollection[id].padding.bottom# = bottom#
	simpleUIDividerCollection[id].padding.left# = left#
	simpleUIDividerCollection[id].padding.right# = right#
	simpleUIDividerCollection[id].padding.top# = top#
endfunction

function SimpleUISetDividerPosition(id as integer, x# as float, y# as float)
	SetSpritePosition(simpleUIDividerCollection[id].container, x#, y#)
	SetSpritePosition(simpleUIDividerCollection[id].divider, x# + simpleUIDividerCollection[id].padding.left#, y# + simpleUIDividerCollection[id].padding.top#)
endfunction 

function SimpleUISetDividerThickness(id as integer, thickness# as float)
	SetSpriteSize(simpleUIDividerCollection[id].container, GetSpriteWidth(simpleUIDividerCollection[id].divider) + simpleUIDividerCollection[id].padding.left# + simpleUIDividerCollection[id].padding.right#, thickness# + simpleUIDividerCollection[id].padding.top# + simpleUIDividerCollection[id].padding.bottom#)
	SetSpriteSize(simpleUIDividerCollection[id].divider, GetSpriteWidth(simpleUIDividerCollection[id].divider), thickness#)
endfunction

function SimpleUISetDividerWidth(id as integer, width# as float)
	SetSpriteSize(simpleUIDividerCollection[id].container, width#, GetSpriteHeight(simpleUIDividerCollection[id].divider) + simpleUIDividerCollection[id].padding.top# + simpleUIDividerCollection[id].padding.bottom#)
	SetSpriteSize(simpleUIDividerCollection[id].divider, width# - simpleUIDividerCollection[id].padding.left# - simpleUIDividerCollection[id].padding.right#, GetSpriteHeight(simpleUIDividerCollection[id].divider))
endfunction

function SimpleUISetLabelAlignment(id as integer, alignment as integer)
	SetTextAlignment(simpleUILabelCollection[id].text, alignment)
endfunction

function SimpleUISetLabelBold(id as integer, bold as integer)
	SetTextBold(simpleUILabelCollection[id].text, bold)
endfunction

function SimpleUISetLabelMarginAll(id as integer, margin# as float)
	simpleUILabelCollection[id].margin.bottom# = margin#
	simpleUILabelCollection[id].margin.left# = margin#
	simpleUILabelCollection[id].margin.right# = margin#
	simpleUILabelCollection[id].margin.top# = margin#
endfunction

function SimpleUISetLabelMarginLTRB(id as integer, left# as float, top# as float, right# as float, bottom# as float)
	simpleUILabelCollection[id].margin.bottom# = bottom#
	simpleUILabelCollection[id].margin.left# = left#
	simpleUILabelCollection[id].margin.right# = right#
	simpleUILabelCollection[id].margin.top# = top#
endfunction

function SimpleUISetLabelPaddingAll(id as integer, padding# as float)
	simpleUILabelCollection[id].padding.bottom# = padding#
	simpleUILabelCollection[id].padding.left# = padding#
	simpleUILabelCollection[id].padding.right# = padding#
	simpleUILabelCollection[id].padding.top# = padding#
endfunction

function SimpleUISetLabelPaddingLTRB(id as integer, left# as float, top# as float, right# as float, bottom# as float)
	simpleUILabelCollection[id].padding.bottom# = bottom#
	simpleUILabelCollection[id].padding.left# = left#
	simpleUILabelCollection[id].padding.right# = right#
	simpleUILabelCollection[id].padding.top# = top#
endfunction

function SimpleUISetLabelPosition(id as integer, x# as float, y# as float)
	SetSpritePosition(simpleUILabelCollection[id].container, x#, y#)
	if (GetTextAlignment(simpleUILabelCollection[id].text) = 0)
		SetTextPosition(simpleUILabelCollection[id].text, x# + simpleUILabelCollection[id].padding.left#, y# + simpleUILabelCollection[id].padding.top#)
	elseif (GetTextAlignment(simpleUILabelCollection[id].text) = 1)
		SetTextPosition(simpleUILabelCollection[id].text, GetSpriteXByOffset(simpleUILabelCollection[id].container), y# + simpleUILabelCollection[id].padding.top#)
	elseif (GetTextAlignment(simpleUILabelCollection[id].text) = 2)
		SetTextPosition(simpleUILabelCollection[id].text, GetSpriteX(simpleUILabelCollection[id].container) + GetSpriteWidth(simpleUILabelCollection[id].container) - simpleUILabelCollection[id].padding.right#, y# + simpleUILabelCollection[id].padding.top#)
	endif
endfunction 

function SimpleUISetLabelSize(id as integer, size# as float)
	SetTextSize(simpleUILabelCollection[id].text, size#)
	SetSpriteSize(simpleUILabelCollection[id].container, GetTextTotalWidth(simpleUILabelCollection[id].text), GetTextTotalHeight(simpleUILabelCollection[id].text))
endfunction

function SimpleUISetPanelBackgroundColor(id as integer, r# as float, g# as float, b# as float, a# as float)
	SetSpriteColor(simpleUIPanelCollection[id].container, r#, g#, b#, a#)
endfunction

function SimpleUISetPanelMarginAll(id as integer, margin# as float)
	simpleUIPanelCollection[id].margin.bottom# = margin#
	simpleUIPanelCollection[id].margin.left# = margin#
	simpleUIPanelCollection[id].margin.right# = margin#
	simpleUIPanelCollection[id].margin.top# = margin#
endfunction

function SimpleUISetPanelMarginLTRB(id as integer, left# as float, top# as float, right# as float, bottom# as float)
	simpleUIPanelCollection[id].margin.bottom# = bottom#
	simpleUIPanelCollection[id].margin.left# = left#
	simpleUIPanelCollection[id].margin.right# = right#
	simpleUIPanelCollection[id].margin.top# = top#
endfunction

function SimpleUISetPanelPaddingAll(id as integer, padding# as float)
	simpleUIPanelCollection[id].padding.bottom# = padding#
	simpleUIPanelCollection[id].padding.left# = padding#
	simpleUIPanelCollection[id].padding.right# = padding#
	simpleUIPanelCollection[id].padding.top# = padding#
endfunction

function SimpleUISetPanelPaddingLTRB(id as integer, left# as float, top# as float, right# as float, bottom# as float)
	simpleUIPanelCollection[id].padding.bottom# = bottom#
	simpleUIPanelCollection[id].padding.left# = left#
	simpleUIPanelCollection[id].padding.right# = right#
	simpleUIPanelCollection[id].padding.top# = top#
endfunction

function SimpleUISetPanelPosition(id as integer, x# as float, y# as float)
	SetSpritePosition(simpleUIPanelCollection[id].container, x#, y#)
endfunction

function SimpleUISetPanelPositionByOffset(id as integer, x# as float, y# as float)
	SetSpritePositionByOffset(simpleUIPanelCollection[id].container, x#, y#)
endfunction

function SimpleUISetPanelSize(id as integer, width# as float, height# as float)
	SetSpriteSize(simpleUIPanelCollection[id].container, width#, height#)
endfunction

function SimpleUISetScreenInitializing(initializing as integer)
	simpleUIScreenInitializing = initializing
endfunction

function SimpleUISetScrollViewMarginAll(id as integer, margin# as float)
	simpleUIScrollViewCollection[id].margin.bottom# = margin#
	simpleUIScrollViewCollection[id].margin.left# = margin#
	simpleUIScrollViewCollection[id].margin.right# = margin#
	simpleUIScrollViewCollection[id].margin.top# = margin#
endfunction

function SimpleUISetScrollViewMarginLTRB(id as integer, left# as float, top# as float, right# as float, bottom# as float)
	simpleUIScrollViewCollection[id].margin.bottom# = bottom#
	simpleUIScrollViewCollection[id].margin.left# = left#
	simpleUIScrollViewCollection[id].margin.right# = right#
	simpleUIScrollViewCollection[id].margin.top# = top#
endfunction

function SimpleUISetScrollViewPaddingAll(id as integer, padding# as float)
	simpleUIScrollViewCollection[id].padding.bottom# = padding#
	simpleUIScrollViewCollection[id].padding.left# = padding#
	simpleUIScrollViewCollection[id].padding.right# = padding#
	simpleUIScrollViewCollection[id].padding.top# = padding#
endfunction

function SimpleUISetScrollViewPaddingLTRB(id as integer, left# as float, top# as float, right# as float, bottom# as float)
	simpleUIScrollViewCollection[id].padding.bottom# = bottom#
	simpleUIScrollViewCollection[id].padding.left# = left#
	simpleUIScrollViewCollection[id].padding.right# = right#
	simpleUIScrollViewCollection[id].padding.top# = top#
endfunction

function SimpleUISetScrollViewPosition(id as integer, x# as float, y# as float)
	SetSpritePosition(simpleUIScrollViewCollection[id].container, x#, y#)
	if (simpleUIScreenInitializing = 1 or simpleUIWindowResized = 1)
		SetSpritePosition(simpleUIScrollViewCollection[id].invisibleDragZone, x#, y#)
	endif
endfunction

function SimpleUISetWindowMinSize(width as integer, height as integer)
	simpleUIDefaults.minWindowSize.height# = height
	simpleUIDefaults.minWindowSize.width# = width
endfunction

function SimpleUISync()
	simpleUIWindowResized = 0
	Sync()
endfunction

