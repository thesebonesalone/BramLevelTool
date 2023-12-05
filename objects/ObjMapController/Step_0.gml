xx = xx - (keyboard_check_pressed(vk_left)) + (keyboard_check_pressed(vk_right))

yy = yy - (keyboard_check_pressed(vk_up)) + (keyboard_check_pressed(vk_down))

if (xx < 1) xx = 1
if (yy < 1) yy = 1
if (xx > 12) xx = 12
if (yy > 14) yy = 14

if (mouse_x > x and mouse_y > y and mouse_x < x + 1280 and mouse_y < y + 672)
{
	var mx = mouse_x - x
	var my = mouse_y - y
	
	var sx = floor(mx/256)
	var sy = floor(my/224)
	var ma = ds_grid_get(map_grid,sx+xx-1,sy+yy-1)
	
	if (mouse_check_button_pressed(mb_left))
	{
		
		var mmx = floor((mx%256)/16)
		ma[mmx] = metaTiles.selected
	}
	
	if (mouse_check_button_pressed(mb_right))
	{
		ma[16] = pSelect.selected
		show_debug_message("Selection is now")
		show_debug_message(ds_grid_get(paletteSelect.pal_grid,0,ma[16]))
		show_debug_message(ds_grid_get(paletteSelect.pal_grid,1,ma[16]))
		show_debug_message(ds_grid_get(paletteSelect.pal_grid,2,ma[16]))
	}
	
	if (mouse_check_button_pressed(mb_middle))
	{
		door.selected = (sx+xx-1) + (sy+yy-1) * 16
	}
	
}