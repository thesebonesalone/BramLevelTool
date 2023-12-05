var picked_sp = noone
if (sprite_exists(global.tilemap))
{
	picked_sp = global.tilemap
	
} else {
	picked_sp = Sp_Tiles
	
}


if (!surface_exists(metasurf))
{
	metasurf = surface_create(4096,224)
	was_clicked = true
}

if (was_clicked)
{
	surface_set_target(metasurf)
	for (var i = 0; i < 256; i++)
	{
		for (var j = 0; j < 14; j++)
		{
			spc = GetXYFromIndex(ds_grid_get(meta_grid,i,j))
			draw_sprite_part_ext(global.tilemap,0,spc.x,spc.y,8,8,i*16,j*16,2,2,c_white,1)
		}
	}
	surface_reset_target()
	was_clicked = false
}

draw_surface_part(metasurf,selected*16,0,16,224,x-32,y)

draw_surface_part(metasurf,at*256,0,1024,224,x,y)

draw_set_color(c_aqua)
draw_rectangle(x,y,x+1024,y+224,true)
for (var i = 0; i < 4; i++)
{
	draw_line(x+i*256,y,x+i*256,y+224)	
	draw_text(x+128+i*256,y+225,i+at)
}