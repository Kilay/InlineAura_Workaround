local InlineAura = LibStub('AceAddon-3.0'):GetAddon('InlineAura')
local profile = InlineAura.db and InlineAura.db.profile

function InlineAura:UpdateButtonState(state)
	if state.highlight ~= "border" then state.button:SetBackdrop(nil); return end
	local color = profile["color"..state.highlightBorder]
	if color then
		state.button:SetChecked(true)
		local backdrop = { 
		  edgeFile = "Interface\\AddOns\\InlineAura_Workaround\\media\\background_flat",
		  tile = false,
		  tileSize = 32, 
		  edgeSize = 1, 
		  insets = { 
			left = 10, 
			right = 10, 
			top = 10, 
			bottom = 10,
		  },
		}
		state.button:SetBackdrop(backdrop)
		state.button:SetBackdropColor(0,0,0,0)
		state.button:SetBackdropBorderColor(unpack(color))
	else
		state.button:GetCheckedTexture():SetVertexColor(1, 1, 1)
	end
end