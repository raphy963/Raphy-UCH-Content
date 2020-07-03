ITEM.Name = 'Rainbow Trail'
ITEM.Price = 1
ITEM.Material = 'trails/rainbow.vmt'
ITEM.LateNight = true


function ITEM:OnEquip(ply, modifications)
	timer.Create(ply:UniqueID() .. "RainbowDashCheck", 0.5, 0, function()
		if (ply:GetSprinting() == true) then
			self:AddRainbowTrail(ply)
		else
			self:RemoveRainbowTrail(ply)
		end
	end)
end

function ITEM:OnHolster(ply)
	timer.Destroy(ply:UniqueID() .. "RainbowDashCheck");
	self:RemoveRainbowTrail(ply)
end


function ITEM:AddRainbowTrail(ply)
	if(!ply.RainbowTrail) then
	ply.RainbowTrail = util.SpriteTrail(ply, ply:LookupAttachment("__IllumPosition"), Color(255,255,255,255), false, 20, 10, 0.33, 1, self.Material)
	end
end

function ITEM:RemoveRainbowTrail(ply)
	if(!ply.RainbowTrail) then return end
	SafeRemoveEntity(ply.RainbowTrail);
	ply.RainbowTrail = nil;
end