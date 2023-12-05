if (mouse_x > x and mouse_y > y and mouse_x <x+64 and mouse_y < y+64)
{
	var mx = mouse_x - x
	var my = mouse_y - y
	
	if (mouse_check_button_pressed(mb_left))
	{
		selected = floor(mx/16) + (floor(my/16)*4)
	}
}