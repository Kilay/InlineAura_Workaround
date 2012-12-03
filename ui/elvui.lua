local ADDON_NAME, Engine = ...
local UI = Engine.UI

if Engine.Enabled then return end -- UI already found

if not ElvUI then return end -- no ElvUI detected

Engine.Enabled = true -- ElvUI found

------------
--- ElvUI
------------
local E, _, _, P, _, _ = unpack(ElvUI)

UI.borderColor = P.general.bordercolor
if E.private.general.pixelPerfect then
	UI.backdrop = {
		edgeFile = E["media"].blankTex, 
		tile = false, tileSize = 0, edgeSize = E.mult, 
		insets = { left = 0, right = 0, top = 0, bottom = 0}
	}
else
	UI.backdrop = {
		edgeFile = E["media"].blankTex, 
		tile = false, tileSize = 0, edgeSize = E.mult, 
		insets = { left = -E.mult, right = -E.mult, top = -E.mult, bottom = -E.mult}
	}
end