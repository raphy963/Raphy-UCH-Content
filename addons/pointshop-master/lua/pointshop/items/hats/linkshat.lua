ITEM.Name = 'Link Hat'
ITEM.Price = 1
ITEM.Model = 'models/gmod_tower/linkhat.mdl'
ITEM.Attachment = 'eyes'
ITEM.CustomVector = Vector(1,1,1)
ITEM.LateNight = true
 
function ITEM:OnEquip(ply, modifications)
        ply:PS_AddClientsideModel(self.ID)
end
 
function ITEM:OnHolster(ply)
        ply:PS_RemoveClientsideModel(self.ID)
end
 
function ITEM:ModifyClientsideModel(ply, model, pos, ang)
        model:SetModelScale(2, 0)
        pos = pos + (ang:Forward() * -15) + (ang:Up() * 15)
		ang:RotateAroundAxis(ang:Right(), -43)
       
        return model, pos, ang
end