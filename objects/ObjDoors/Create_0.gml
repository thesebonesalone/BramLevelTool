selected = 0
map = instance_nearest(x,y,ObjMapController)
doors = ds_grid_create(256,2)
enemies = ds_grid_create(256,2)
secrets = ds_grid_create(256,3)

for (i=0;i<256;i++)
{
	ds_grid_set(doors,i,0,0)
	ds_grid_set(doors,i,1,0)
	ds_grid_set(enemies,i,0,0)
	ds_grid_set(enemies,i,1,0)
	ds_grid_set(secrets,i,0,0)
	ds_grid_set(secrets,i,1,0)
	ds_grid_set(secrets,i,2,0)
}

sec_arr = ["None","Pick up","Door","Enemy","Switch","Bomb Wall","Shop","NPC","Key Door","X","X","X","Boss 1","Boss 2","Boss 3","Boss 4"];

create_button(x,y+176,Spr_Left,function(){
	ds_grid_set(secrets,selected,0,ds_grid_get(secrets,selected,0)-1)	
})
create_button(x+32,y+176,Spr_Right,function(){
	ds_grid_set(secrets,selected,0,ds_grid_get(secrets,selected,0)+1)	
})

create_button(x+64,y+176,Spr_Up,function(){
	ds_grid_set(secrets,selected,0,ds_grid_get(secrets,selected,0)-16)	
})
create_button(x+96,y+176,Spr_Down,function(){
	ds_grid_set(secrets,selected,0,ds_grid_get(secrets,selected,0)+16)	
})

create_button(x,y+208,Spr_Left,function(){
	ds_grid_set(secrets,selected,1,ds_grid_get(secrets,selected,1)-1)	
})
create_button(x+64,y+208,Spr_Right,function(){
	ds_grid_set(secrets,selected,1,ds_grid_get(secrets,selected,1)+1)	
})

create_button(x,y+240,Spr_Left,function(){
	ds_grid_set(secrets,selected,2,ds_grid_get(secrets,selected,2)-1)	
})
create_button(x+64,y+240,Spr_Right,function(){
	ds_grid_set(secrets,selected,2,ds_grid_get(secrets,selected,2)+1)	
})