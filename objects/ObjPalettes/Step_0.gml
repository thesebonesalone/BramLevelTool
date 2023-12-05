if (mouse_x > x and mouse_y > y and mouse_x < x + 64 and mouse_y < y + 256)
{
	var mx = mouse_x - x
	var my = mouse_y - y
	if (mouse_check_button_pressed(mb_left))
	{
		
		var sx = floor(mx / 16)
		var sy = floor(my / 16)
		
		ds_grid_set(pal_grid,sx,sy,palSel.selected)
		changed = true
	}
	if (mouse_check_button_pressed(mb_right))
	{
		selected = floor(my/16)
	}
	
}