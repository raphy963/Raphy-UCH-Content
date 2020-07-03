ITEM.Name = 'Pigmask Trail'
ITEM.Price = 1
ITEM.Material = 'trails/pigmask.vmt'

function ITEM:OnEquip(ply, modifications)
	if IsValid(ply.PigmaskTrail) then
	SafeRemoveEntity(ply.PigmaskTrail);
	ply.PigmaskTrail = nil;
	end
	ply.PigmaskTrail = util.SpriteTrail(ply, 10, Color(255, 255, 255, 255), false, 20, 10, 0.55, 0.04, self.Material)

end

function ITEM:OnHolster(ply)
	if(!ply.PigmaskTrail) then return end
	SafeRemoveEntity(ply.PigmaskTrail);
	ply.PigmaskTrail = nil;
end