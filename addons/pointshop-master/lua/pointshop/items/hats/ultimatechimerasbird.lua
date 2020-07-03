ITEM.Name = "Ultimate Chimera's Bird"
ITEM.Price = 1
ITEM.Model = 'models/uch/birdgib.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
	--timer.Simple( 0.2, function() if ply:IsGhost() then ply:CreateBirdProp() end end )
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
    model:SetModelScale(0.75, 0)
    pos = pos + (ang:Forward() * -38) + (ang:Up() * -40)
    
    return model, pos, ang
end