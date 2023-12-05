if (undrawn)
{
	var surf = surface_create(4,4)
	surface_set_target(surf)
	draw_sprite(spr_palette,0,0,0)
	show_debug_message("Enter color pick")
	//create palette info here
	for (var i = 0; i < 16; i++)
	{
		var xxx = (i%4)
		var yyy = floor(i/4)
		var sm = surface_getpixel(surf,xxx,yyy)
		var red = color_get_red(sm)
		var blue = color_get_blue(sm)
		var green = color_get_green(sm)
		
		ds_grid_set(pBank,i,0,red)
		ds_grid_set(pBank,i,1,green)
		ds_grid_set(pBank,i,2,blue)
		
	}
	
	for (var i = 0; i < 16; i++)
	{
		var str = "Bank "
		str = string_concat(str,i,":")
		for (var j = 0; j < 3; j ++)
		{
			str = string_concat(str,ds_grid_get(pBank,i,j)," ")
		}
		
		
		
	}
	surface_reset_target()
	surface_free(surf)
	undrawn = false
}



//set shader up






for (var i = 0; i <5; i ++)
{
	for (var j = 0; j < 3;j ++)
	{
		var a = ds_grid_get(map_grid,i-1+xx,j-1+yy)
		if (!undrawn)
		{
			shader_set(paletteShader)
			var n = a[16]
			selc1 = ds_grid_get(paletteSelect.pal_grid,1,n)
			selc2 = ds_grid_get(paletteSelect.pal_grid,2,n)
			selc3 = ds_grid_get(paletteSelect.pal_grid,3,n)
			
			c1 = shader_get_uniform(paletteShader,"c1")
			c2 = shader_get_uniform(paletteShader,"c2")
			c3 = shader_get_uniform(paletteShader,"c3")
	
			p1 = shader_get_uniform(paletteShader,"p1")
			p2 = shader_get_uniform(paletteShader,"p2")
			p3 = shader_get_uniform(paletteShader,"p3")
			
			shader_set_uniform_f(p1,ds_grid_get(pBank,1,0)/255,ds_grid_get(pBank,1,1)/255,ds_grid_get(pBank,1,2)/255,1.0)
			shader_set_uniform_f(p2,ds_grid_get(pBank,2,0)/255,ds_grid_get(pBank,2,1)/255,ds_grid_get(pBank,2,2)/255,1.0)
			shader_set_uniform_f(p3,ds_grid_get(pBank,3,0)/255,ds_grid_get(pBank,3,1)/255,ds_grid_get(pBank,3,2)/255,1.0)

			shader_set_uniform_f(c1,ds_grid_get(pBank,selc1,0)/255,ds_grid_get(pBank,selc1,1)/255,ds_grid_get(pBank,selc1,2)/255,1.0)
			shader_set_uniform_f(c2,ds_grid_get(pBank,selc2,0)/255,ds_grid_get(pBank,selc2,1)/255,ds_grid_get(pBank,selc2,2)/255,1.0)
			shader_set_uniform_f(c3,ds_grid_get(pBank,selc3,0)/255,ds_grid_get(pBank,selc3,1)/255,ds_grid_get(pBank,selc3,2)/255,1.0)
		}
		for (var k = 0; k < 16; k++)
		{
			var an = a[k]
			draw_surface_part_ext(metaTiles.metasurf,(an*16) + a[17]*256,0,16,224,x+i*256 + k*16,y+j*224,1,1,c_white,1)
		}
		draw_set_color(c_red)
		draw_text(x + i * 256 + 128, y + j* 224 + 88, a[17])
		var ind = (i -1 + xx) + (j-1+yy)*16
		ind2 = ds_grid_get(door.secrets,ind,0)
		draw_set_alpha(0.5)
		draw_rectangle(x+i*256+(ind2%16)*16,y+j*224+floor(ind2/16)*16,16+x+i*256+(ind2%16)*16,16+y+j*224+floor(ind2/16)*16,false)
		draw_set_alpha(1)
		//draw_sprite_part_ext(global.tilemap,0,ds_grid_get(door.secrets,ind,1)
	}
}
shader_reset()
draw_set_color(c_aqua)
for (var i = 0; i < 6; i ++)
{
	if (i!=5) draw_text(i*256 + 128,y - 16,i-1 + xx)
	draw_line(i*256+x,y,i*256+x,y+672)
	
}

for (var j = 0; j < 4; j++)
{
	draw_text(x-16,y + j*224 + 88,j-1+yy)
	draw_line(x,y + j*224,x+1280,j*224+y)
	
}

draw_set_color(c_purple)
var selx = door.selected%16
var sely = floor(door.selected/16)
var xx1 = (selx-xx+1)
var yy1 = (sely-yy+1)
if (xx1 < 6 and yy1 < 5 and xx1 >= 0 and yy1 >= 0)
{
	var xx2 = xx1 * 256
	var yy2 = yy1 * 224
	
	draw_line_width(xx2+x,yy2+y,xx2+x+256,yy2+y,3)
	draw_line_width(xx2+x,yy2+224+y,xx2+x+256,yy2+y+224,3)
	draw_line_width(xx2+x,yy2+y+224,xx2+x,yy2+y,3)
	draw_line_width(xx2+x+256,yy2+y,xx2+x+256,yy2+y+224,3)
}
var t = ds_grid_get(door.doors,door.selected,0)
var mx = t%16
var my = floor(t/16)
	
var r = ds_grid_get(door.doors,door.selected,1)
	
var mapx = (((r%16)*16) + (mx * 256)) - ((xx-1)*256)
var mapy = (floor(r/16)*16) + (my * 224) - ((yy-1)*224)
if (mapx < 1536 and mapx>=0 and mapy < 960 and mapy >= 0)
{
	draw_set_alpha(0.5)
	draw_rectangle(mapx+x,mapy+y,x+mapx+16,y+mapy+16,false)
}
draw_set_alpha(1)
draw_set_color(c_white)