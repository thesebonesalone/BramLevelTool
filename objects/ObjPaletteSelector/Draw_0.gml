draw_sprite_ext(spr_palette,0,x,y,16,16,0,c_white,1)

var xx = selected%4
var yy = floor(selected/4)

draw_sprite_part_ext(spr_palette,0,xx,yy,1,1,x-32,y,16,16,c_white,1)

draw_set_color(c_aqua)
draw_rectangle(x-32,y,x-16,y+16,true)