

map_grid = ds_grid_create(16,16)

for (var i = 0;i<16;i++)
{
	for (var j = 0; j < 16;j++)
	{
		 ds_grid_set(map_grid,i,j,[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
	}
}

xx = 1
yy = 1

controller = instance_nearest(x,y,ObjController)
metaTiles = instance_nearest(x,y,ObjMetaContainer)
pSelect = instance_nearest(x,y,ObjPalettes)

//set up basic shader values


paletteBase = instance_nearest(x,y,ObjPaletteSelector)
paletteSelect = instance_nearest(x,y,ObjPalettes)

undrawn = true

pBank = ds_grid_create(16,3)

door = instance_nearest(x,y,ObjDoors)