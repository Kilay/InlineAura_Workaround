local ADDON_NAME, Engine = ...
local UI = Engine.UI

if Engine.Enabled then return end -- UI already found

if not Tukui then return end -- no Tukui detected

Engine.Enabled = true -- Tukui found

------------
--- Tukui
------------
local T, C, _ = unpack(Tukui)


UI.borderColor = C.general.bordercolor
UI.backdrop = {	
	edgeFile = C["media"].blank, 
	tile = false, tileSize = 0, edgeSize = T.mult, 
	insets = { left = T.mult, right = T.mult, top = T.mult, bottom = T.mult}
}