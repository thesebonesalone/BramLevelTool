// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_button(xx,yy,sprite,act){
	with instance_create_depth(xx,yy,0,Obj_Button)
	{
		activate = act
		sprite_index = sprite
	}

}