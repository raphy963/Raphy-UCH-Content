ITEM.Name = 'Midna Hat'
ITEM.Price = 1
ITEM.Model = 'models/gmod_tower/midnahat.mdl'
ITEM.Attachment = 'eyes'
ITEM.CustomVector = Vector(2.5,2.5,2.5)
ITEM.LateNight = true
 
function ITEM:OnEquip(ply, modifications)
        ply:PS_AddClientsideModel(self.ID)
end
 
function ITEM:OnHolster(ply)
        ply:PS_RemoveClientsideModel(self.ID)
end
 
function ITEM:ModifyClientsideModel(ply, model, pos, ang)
        model:SetModelScale(4.5, 0)
        pos = pos + (ang:Forward() * -15.5)
       
        return model, pos, ang
end