x_r = x + 128 * 4
y_b = y + 128 * 4

if (mouse_x >=x and mouse_x <= x_r and mouse_y > y and mouse_y <= y_b)
{
	a_mouse_x = floor((mouse_x - x) / 32)
	a_mouse_y = floor((mouse_y - y) / 32)
	if (mouse_check_button_pressed(mb_left))
	{
		controller.sp = a_mouse_x + a_mouse_y * 16
		
	}
	
}