// File: icons.agc
// Created: 22-08-22

type typeSimpleUIIcon
	sortKey$ as string
	id as integer
	imageID as integer
	name$ as string
endtype



global blankSimpleUIIcon as typeSimpleUIIcon
global simpleUIIcon as typeSimpleUIIcon[]

local simpleUIFileLoop as integer
local simpleUIIconFileID as integer
local simpleUIIconLoop as integer

simpleUIIconFileID = OpenToRead("SimpleUI-Icons/outlined/96px/Material-Icons.txt")
for simpleUIFileLoop = 1 to 4
	local simpleUIIconFileImage as integer : simpleUIIconFileImage = LoadImage("SimpleUI-Icons/outlined/96px/Material-Icons-" + SimpleUIAddLeadingZeros(str(simpleUIFileLoop), 2) + ".png")
	for simpleUIIconLoop = 1 to 400
		local simpleUIIconFileLine$ as string : simpleUIIconFileLine$ = ReadLine(simpleUIIconFileID)
		local simpleUIIconSubimage as integer : simpleUIIconSubimage = LoadSubImage(simpleUIIconFileImage, "icon" + str(simpleUIIconLoop))
		simpleUIIcon.insert(blankSimpleUIIcon)
		local simpleUIIconID as integer : simpleUIIconID = simpleUIIcon.length
		simpleUIIcon[simpleUIIconID].sortKey$ = simpleUIIconFileLine$
		simpleUIIcon[simpleUIIconID].id = simpleUIIconID
		simpleUIIcon[simpleUIIconID].imageID = simpleUIIconSubimage
		simpleUIIcon[simpleUIIconID].name$ = simpleUIIconFileLine$
	next
next
CloseFile(simpleUIIconFileID)
simpleUIIcon.sort()



function SimpleUIAddLeadingZeros(string$ as string, noOfZeros as integer)
	local i as integer
	
	for i = 1 to noOfZeros
		if (len(string$) < noOfZeros)
			string$ = "0" + string$
		endif
	next
endfunction string$

function SimpleUIGetIconImageID(iconName$ as string)
endfunction simpleUIIcon[simpleUIIcon.find(iconName$)].imageID