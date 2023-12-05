x_r = x + 1024
y_b = y + 224
at2 = at + (keyboard_check_pressed(ord("D"))) - (keyboard_check_pressed(ord("A")))

if (at2 < 0) at2 = 0
if (at2 > 12) at2 = 12

if (at != at2)
{
	was_clicked = true
	at = at2
}

if (mouse_x >=x and mouse_x <= x_r and mouse_y > y and mouse_y <= y_b)
{
	var mx = mouse_x - x
	var my = mouse_y - y
	if (mouse_check_button(mb_left))
	{
		var xx = floor(mx/16) + at * 16
		var yy = floor(my/16)
		ds_grid_set(meta_grid,xx,yy,controller.sp)
		was_clicked = true
	}
	
	if (mouse_check_button(mb_right))
	{
		selected = floor(mx/16) + at*16
	}
}