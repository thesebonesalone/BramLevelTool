//create grid
pal_grid = ds_grid_create(4,16)

for (i = 0; i < 4; i++)
{
	for (j= 0; j < 16; j++)
	{
		ds_grid_set(pal_grid,i,j,i)	
	}
}

//create palette surface

pal_surf = surface_create(4,16)

changed = true

selected = 0

palSel = instance_nearest(x,y,ObjPaletteSelector)