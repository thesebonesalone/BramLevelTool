var picked_sp = noone
if (sprite_exists(global.tilemap))
{
	picked_sp = global.tilemap
	
} else {
	picked_sp = Sp_Tiles
}


var m = ds_grid_get(doors,selected,0)
var pos = ds_grid_get(doors,selected,1)

var e1 = ds_grid_get(enemies,selected,0)
var e2 = ds_grid_get(enemies,selected,1)


var mxx = m%16
var myy = floor(m/16)

var xx = pos%16
var yy = floor(pos/16)
draw_text(x+80,y-18,"Door")
draw_sprite(Spr_Left,0,x,y)
draw_text(x+32,y+8,mxx)
draw_sprite(Spr_Right,0,x+64,y)
draw_sprite(Spr_Up,0,x+96,y)
draw_text(x+128,y+8,myy)
draw_sprite(Spr_Down,0,x+160,y)

draw_sprite(Spr_Left,0,x,y+32)
draw_text(x+32,y+40,xx)
draw_sprite(Spr_Right,0,x+64,y+32)
draw_sprite(Spr_Up,0,x+96,y+32)
draw_text(x+128,y+40,yy)
draw_sprite(Spr_Down,0,x+160,y+32)

draw_text(x,y+64,"Enemies")
draw_sprite(Spr_Left,0,x,y+80)
draw_sprite(Spr_Right,0,x+64,y+80)
draw_text(x+32,y+80,e1)
draw_sprite(Spr_Left,0,x,y+112)
draw_sprite(Spr_Right,0,x+64,y+112)
draw_text(x+32,y+112,e2)

draw_text(x,y+144,"Secrets")
draw_sprite_part_ext(picked_sp,0,ds_grid_get(secrets,selected,1)*8,40,8,8,x+32,y+208,4,4,c_white,1)
draw_text(x+96,y+208,sec_arr[ds_grid_get(secrets,selected,1)])
draw_sprite_part_ext(picked_sp,0,ds_grid_get(secrets,selected,2)*8,40,8,8,x+32,y+240,4,4,c_white,1)