ITEM.Name = 'Jack-O-Latern Head'
ITEM.Price = 1
ITEM.Model = 'models/props/jackhappy.mdl'
ITEM.Attachment = 'eyes'
ITEM.Seasonal = 'halloween'
ITEM.CustomVector = Vector(1.4,1.4,1.4)
 
function ITEM:OnEquip(ply, modifications)
        ply:PS_AddClientsideModel(self.ID)
end
 
function ITEM:OnHolster(ply)
        ply:PS_RemoveClientsideModel(self.ID)
end
 
function ITEM:ModifyClientsideModel(ply, model, pos, ang)
        model:SetModelScale(2.155, 0)
        pos = pos + (ang:Forward() * -13) + (ang:Up() * -17.8675)
		ang:RotateAroundAxis(ang:Right(), 0)
       
        return model, pos, ang
end