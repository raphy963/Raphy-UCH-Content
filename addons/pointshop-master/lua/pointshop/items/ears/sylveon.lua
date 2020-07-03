ITEM.Name = 'Sylveon Ears'
ITEM.Price = 1
ITEM.Model = 'models/uch_hats/sylveon.mdl'
ITEM.Attachment = 'eyes'
ITEM.LateNight = true

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
    model:SetModelScale(0.75, 0)
    pos = pos + (ang:Forward() * -11) + (ang:Up() * 0.2)
    
    return model, pos, ang
end