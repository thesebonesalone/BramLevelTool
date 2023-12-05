if (mouse_x > x and mouse_x < x + 128 and mouse_y > y and mouse_y < y+32 and mouse_check_button_pressed(mb_left))
{
	surfa = surface_create(2048,1792)
	surface_set_target(surfa)
	var bb = meta.metasurf
	var dd = map.map_grid
	for (i = 0; i < 16; i++)
	{
		for (j = 0; j < 16; j ++)
		{
			for (xx = 0;xx<16;xx++)
			{
				shader_set(paletteShader)
				var tile = ds_grid_get(dd,i,j)[xx]
				n = ds_grid_get(dd,i,j)[16]
				selc1 = ds_grid_get(paletteSelect.pal_grid,1,n)
				selc2 = ds_grid_get(paletteSelect.pal_grid,2,n)
				selc3 = ds_grid_get(paletteSelect.pal_grid,3,n)
			
				c1 = shader_get_uniform(paletteShader,"c1")
				c2 = shader_get_uniform(paletteShader,"c2")
				c3 = shader_get_uniform(paletteShader,"c3")
	
				p1 = shader_get_uniform(paletteShader,"p1")
				p2 = shader_get_uniform(paletteShader,"p2")
				p3 = shader_get_uniform(paletteShader,"p3")
			
				shader_set_uniform_f(p1,ds_grid_get(map.pBank,1,0)/255,ds_grid_get(map.pBank,1,1)/255,ds_grid_get(map.pBank,1,2)/255,1.0)
				shader_set_uniform_f(p2,ds_grid_get(map.pBank,2,0)/255,ds_grid_get(map.pBank,2,1)/255,ds_grid_get(map.pBank,2,2)/255,1.0)
				shader_set_uniform_f(p3,ds_grid_get(map.pBank,3,0)/255,ds_grid_get(map.pBank,3,1)/255,ds_grid_get(map.pBank,3,2)/255,1.0)

				shader_set_uniform_f(c1,ds_grid_get(map.pBank,selc1,0)/255,ds_grid_get(map.pBank,selc1,1)/255,ds_grid_get(map.pBank,selc1,2)/255,1.0)
				shader_set_uniform_f(c2,ds_grid_get(map.pBank,selc2,0)/255,ds_grid_get(map.pBank,selc2,1)/255,ds_grid_get(map.pBank,selc2,2)/255,1.0)
				shader_set_uniform_f(c3,ds_grid_get(map.pBank,selc3,0)/255,ds_grid_get(map.pBank,selc3,1)/255,ds_grid_get(map.pBank,selc3,2)/255,1.0)
				
				draw_surface_part_ext(bb,tile*16,0,16,224,i*128+xx*8,j*112,0.5,0.5,c_white,1)
			}
		}
	}
	surface_reset_target()
	surface_save(surfa,"Mapscreen.png")
	surface_free(surfa)
}
draw_self()