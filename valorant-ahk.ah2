#Warn All, Off 
#MaxHotkeysPerInterval 2000

#HotIf (WinActive("VALORANT") && hotKeysActive)
; #Include "mechanics\Time\Time.ah2"
#Include "match\match.ah2"
#Include "units\agents\agents.ah2"
#Include "match\players\self\self.ah2"
#Include "game-hotkeys\game-hotkeys.ah2" 
#Include "game-actions\game-actions.ah2" 

global __match := Match.new()

global __agents := Agents.new()
global __player := Self.new(__agents.__Jett)
global __hotkeys := GameHotkeys.new()
global __gameActions := GameActions.new()
SetKeyDelay(-1)
#Include "hotkeys\hotkeys.ah2"
#HotIf