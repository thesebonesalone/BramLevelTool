spc = GetXYFromIndex(sp)
if (sprite_exists(global.tilemap))
{
	draw_sprite_part_ext(global.tilemap,0,spc.x,spc.y,8,8,x,y,4,4,c_white,1)
	
} else {
	draw_sprite_part_ext(Sp_Tiles,0,spc.x,spc.y,8,8,x,y,4,4,c_white,1)
	
}



draw_set_color(c_aqua)
draw_rectangle(x,y,x+32,y+32,true)