local ADDON_NAME, Engine = ...
if not Engine.Enabled then return end

local UI = Engine.UI
local InlineAura = LibStub('AceAddon-3.0'):GetAddon('InlineAura')
local profile = InlineAura.db and InlineAura.db.profile
local buttonStateProto = InlineAura.buttonStateProto

function buttonStateProto:UpdateState()	
	if self.highlight == "border" then
		local color = profile["color"..self.highlightBorder]
		if color then
			self.button:SetChecked(true)	
			self.button:SetTemplate('Transparent')
			self.button:SetBackdropBorderColor(unpack(color))
			return
		end
	end
	self.button:SetTemplate('Transparent')
end