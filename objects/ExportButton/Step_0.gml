if (is_entered and mouse_check_button_pressed(mb_left))
{
	var str = "";
	//get meta tiles
	//turn them into binary values
	//break the values into bytes
	//encode them
	for (var i = 0; i < 256; i++)
	{
		for (var j = 0; j < 14; j++)
		{
			var spc = ds_grid_get(metaTiles.meta_grid,i,j)
			str += ToHex(spc,2)
		}
	}
	
	var mapstr = ""
	//get maptiles
	for (var i = 0; i < 16; i ++)
	{
		for (var j = 0; j < 16; j ++)
		{
			var cell = ds_grid_get(mapController.map_grid,i,j)
			for (var k = 0; k < 18; k++)
			{
				mapstr += ToHex(cell[k],2);
			}
		}
	}
	
	str+=mapstr
	var palstr = ""
	//set palettes
	for (var i = 0; i < 16; i ++)
	{
		for (var j = 0; j < 4; j++)
		{
			var num = ds_grid_get(palette.pal_grid,j,i)
			palstr += ToHex(num,1)
		}
	}
	
	var estr = ""
	for (var i = 0; i < 256; i++)
	{
		estr += ToHex(ds_grid_get(doors.enemies,i,0),1)
		estr += ToHex(ds_grid_get(doors.enemies,i,1),1)
	}
	var dstr = ""
	for (var i = 0; i < 256; i++)
	{
		dstr += ToHex(ds_grid_get(doors.doors,i,0),2)
		dstr += ToHex(ds_grid_get(doors.doors,i,1),2)
	}
	var secstr = ""
	for (var i = 0; i < 256; i++)
	{
		secstr += ToHex(ds_grid_get(doors.secrets,i,0),2)	
		secstr += ToHex(ds_grid_get(doors.secrets,i,1),1)
		secstr += ToHex(ds_grid_get(doors.secrets,i,2),1)
		
	}
	
	show_debug_message(dstr)
	str += dstr
	str += secstr
	str += palstr
	str += estr
	
	
	//update to add animation tables
	//normal
	str += "000100200210010110300310"
	//flap
	str += "000100000100000100000100"
	//Octorock
	str += "000100200300010110201301"
	//basic
	str += "000000100100010010101101"
	//need to handle doors now
	
	var file = file_text_open_write(working_directory + "memfile.txt")
	file_text_write_string(file,str)
	file_text_close(file)
}