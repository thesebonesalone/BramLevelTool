if (sprite_exists(global.tilemap))
{
	draw_sprite_part_ext(global.tilemap,0,0,0,128,128,x,y,4,4,c_white,1)
} else
{
	draw_sprite_part_ext(Sp_Tiles,0,0,0,128,128,x,y,4,4,c_white,1)
}

controller = instance_nearest(x,y,ObjController)

for (var i = 0; i < 17; i++)
{
	draw_set_color(c_aqua)
	var ix = i*32+x
	draw_line(ix,y,ix,y+512)
}
for (var i = 0; i < 17; i++)
{
	var iy = i*32 + y
	draw_line(x,iy,x+512,iy)
}

draw_set_color(c_white)