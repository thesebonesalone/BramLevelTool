if (!surface_exists(pal_surf))
{
	pal_surf = surface_create(4,16)
	changed=true
}

if (changed)
{
	surface_set_target(pal_surf)
	for (var i = 0; i < 4; i++)
	{
		for (var j = 0; j < 16; j++)
		{
			var t = ds_grid_get(pal_grid,i,j)
			//show_debug_message(t)
			var mx = t%4
			var my = floor(t/4)
			
			draw_sprite_part_ext(spr_palette,0,mx,my,1,1,i,j,1,1,c_white,1)
			
		}
	}
	
	
	changed = false
	surface_reset_target()
}

draw_surface_ext(pal_surf,x,y,16,16,0,c_white,1)

for (var i = 0; i<16; i++)
{
	draw_set_color(c_aqua)
	draw_line(x,i*16+y,x+64,i*16+y)
}

draw_sprite(spr_selection,0,x-16,selected*16 + y)