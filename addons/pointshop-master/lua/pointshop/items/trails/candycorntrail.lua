ITEM.Name = 'Candycorn Trail'
ITEM.Price = 1
ITEM.Material = 'trails/candycorn.vmt'
ITEM.Seasonal = 'halloween'

function ITEM:OnEquip(ply, modifications)
	ply.CandycornTrail = util.SpriteTrail(ply, 10, Color(255, 255, 255, 255), false, 20, 10, 0.55, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.CandycornTrail);
end
