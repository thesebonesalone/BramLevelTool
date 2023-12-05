was_clicked = true

metasurf = surface_create(4096,224)

meta_grid = ds_grid_create(256,14)

for (var i = 0; i < 256; i++)
{
	for (var j = 0; j < 14; j++)
	{
		ds_grid_set(meta_grid,i,j,0)
	}
}

selected = 0

at = 0

controller = instance_nearest(x,y,ObjController)