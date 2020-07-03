ITEM.Name = 'Santa Hat'
ITEM.Price = 1
ITEM.Model = 'models/gmod_tower/santahat.mdl'
ITEM.Attachment = 'eyes'
ITEM.Seasonal = 'christmas'
ITEM.CustomVector = Vector(2,2,2)

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	local Size = Vector(4,4.5,4.5)
	local mat = Matrix()
	mat:Scale(Size)
	model:EnableMatrix('RenderMultiply', mat)

	local MAngle = Angle(9.3900003433228,0,0)
	local MPos = Vector(-11.430000305176,0,9.6499996185303)

	pos = pos + (ang:Forward() * MPos.x) + (ang:Up() * MPos.z) + (ang:Right() * MPos.y)
	ang:RotateAroundAxis(ang:Forward(), MAngle.p)
	ang:RotateAroundAxis(ang:Up(), MAngle.y)
	ang:RotateAroundAxis(ang:Right(), MAngle.r)

	return model, pos, ang
end
