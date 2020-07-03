ITEM.Name = 'Ness Cap'
ITEM.Price = 1
ITEM.Model = 'models/UCH_hats/mrbaseballcap.mdl'
ITEM.Attachment = 'eyes'
 
function ITEM:OnEquip(ply, modifications)
        ply:PS_AddClientsideModel(self.ID)
end
 
function ITEM:OnHolster(ply)
        ply:PS_RemoveClientsideModel(self.ID)
end
 
function ITEM:ModifyClientsideModel(ply, model, pos, ang)
        model:SetModelScale(1, 0)
        pos = pos + (ang:Forward() * -13) + (ang:Up() * -41)
		ang:RotateAroundAxis(ang:Right(), 0)
       
        return model, pos, ang
end