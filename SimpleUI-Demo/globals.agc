// File: globals.agc
// Created: 22-08-22

global blankVariable as typeJSONVariables
global localVariables as typeJSONVariables[]
if (GetFileExists("localVariables.json")) then localVariables.load("localVariables.json")
global screen as integer : screen = 1
global versionNumber$ as string : versionNumber$ = "2.0.0"
