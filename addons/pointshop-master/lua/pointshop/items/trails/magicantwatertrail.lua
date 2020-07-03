ITEM.Name = 'Magicant Water Trail'
ITEM.Price = 1
ITEM.Material = 'trails/magicantfix3.vmt'

function ITEM:OnEquip(ply, modifications)
	if IsValid(ply.MagicantTrail) then
	SafeRemoveEntity(ply.MagicantTrail);
	ply.MagicantTrail = nil;
	end
	ply.MagicantTrail = util.SpriteTrail(ply, 10, Color(255, 255, 255, 255), false, 20, 10, 0.55, 0.04, self.Material)

end

function ITEM:OnHolster(ply)
	if(!ply.MagicantTrail) then return end
	SafeRemoveEntity(ply.MagicantTrail);
	ply.MagicantTrail = nil;
end