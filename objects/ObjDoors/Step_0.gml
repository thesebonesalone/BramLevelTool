
if (mouse_check_button_pressed(mb_left))
{
	if (mouse_x > x and mouse_x < x+64)
	{
		if (mouse_y > y and mouse_y < y+32)
		{
			ds_grid_set(doors,selected,0,ds_grid_get(doors,selected,0)-1)	
			
		}
		if (mouse_y > y+32 and mouse_y < y+64)
		{
			ds_grid_set(doors,selected,1,ds_grid_get(doors,selected,1)-1)
		}
		if (mouse_y > y+80 and mouse_y < y+112)
		{
			ds_grid_set(enemies,selected,0,ds_grid_get(enemies,selected,0)-1)	
		}
		if (mouse_y > y+112 and mouse_y < y+144)
		{
			ds_grid_set(enemies,selected,1,ds_grid_get(enemies,selected,1)-1)	
		}
	}
	
	if (mouse_x > x+64 and mouse_x < x+96)
	{
		if (mouse_y > y and mouse_y < y+32)
		{
			ds_grid_set(doors,selected,0,ds_grid_get(doors,selected,0)+1)	
			
		}
		if (mouse_y > y+32 and mouse_y < y+64)
		{
			ds_grid_set(doors,selected,1,ds_grid_get(doors,selected,1)+1)
		}
		if (mouse_y > y+80 and mouse_y < y+112)
		{
			ds_grid_set(enemies,selected,0,ds_grid_get(enemies,selected,0)+1)	
		}
		if (mouse_y > y+112 and mouse_y < y+144)
		{
			ds_grid_set(enemies,selected,1,ds_grid_get(enemies,selected,1)+1)	
		}
	}
	if (mouse_x > x+96 and mouse_x < x+128)
	{
		if (mouse_y > y and mouse_y < y+32)
		{
			ds_grid_set(doors,selected,0,ds_grid_get(doors,selected,0)-16)	
			
		}
		if (mouse_y > y+32 and mouse_y < y+64)
		{
			ds_grid_set(doors,selected,1,ds_grid_get(doors,selected,1)-16)
		}
	}
	if (mouse_x > x+160 and mouse_x < x+192)
	{
		if (mouse_y > y and mouse_y < y+32)
		{
			ds_grid_set(doors,selected,0,ds_grid_get(doors,selected,0)+16)	
			
		}
		if (mouse_y > y+32 and mouse_y < y+64)
		{
			ds_grid_set(doors,selected,1,ds_grid_get(doors,selected,1)+16)
		}
	}
}