//get entire metatile thread
if (is_entered and mouse_check_button_pressed(mb_left))
{
	var file = file_text_open_read(working_directory + "memfile.txt")
	var str = ""
	var tempstr = ""
	//enter file into string
	do {
		tempstr = file_text_readln(file)
		str += tempstr
			
	} until (string_length(tempstr) < 2)
	str = string_copy(str,1,string_length(str) -1)
	//remove special characters
	
	//show_debug_message(str)
	
	//retrieve meta string
	var metastr = string_copy(str,1,7168)
	//go through metastring in chunks of 24
	for (var i = 0 ; i < 256; i++)
	{
		var tst = string_copy(metastr,i*28+1,28)
		//convert to binary string
		for (var j = 0; j < 14; j ++)
		{
			var st1 = string_copy(tst,j*2 + 1,1)
			var st2 = string_copy(tst,j*2+2,1)
			var n = (FromHex(st1)*16) + FromHex(st2)
			ds_grid_set(metaTiles.meta_grid,i,j,n)
			with (metaTiles)
			{	
				was_clicked = true
			}
		}
	}
	//show_debug_message(bstr)
	
	
	
	//retrieve map string
	var mapstr = string_copy(str,7169,9216)
	
	for (var i = 0; i < 16; i++)
	{
		for (var j = 0; j < 16; j++)
		{
			var ar = ds_grid_get(mapController.map_grid,i,j)
			for (var k=0; k< 18; k++)
			{
				ar[k] = FromHex(string_char_at(mapstr,1))*16 + FromHex(string_char_at(mapstr,2))
				mapstr = string_copy(mapstr,3,string_length(mapstr)-2)
			}
		}
	}
	
	//retrieve palette string
	var palstr = string_copy(str,18433,64)
	
	for (var i = 0; i < 16; i ++)
	{
		for (var j = 0; j < 4; j++)
		{
			var num = FromHex(string_copy(palstr,i*4+j + 1, 1))
			ds_grid_set(palette.pal_grid,j,i,num)
			
			with (palette)
			{
				changed = true	
			}
		}
	}
	var estr = string_copy(str,18497,512)
	for (var i = 0; i < 256; i ++)
	{
		var n1 = FromHex(string_char_at(estr,i*2+1))
		var n2 = FromHex(string_char_at(estr,i*2+2))
		ds_grid_set(doors.enemies,i,0,n1)
		ds_grid_set(doors.enemies,i,1,n2)
		
	}
	var doorstr = string_copy(str,16385,1024)
	show_debug_message(doorstr)
	for (var i = 0; i < 256; i++)
	{
		var num1 = FromHex(string_char_at(doorstr,1+i*4))*16+FromHex(string_char_at(doorstr,1+i*4+1))
		var num2 = FromHex(string_char_at(doorstr,1+i*4+2))*16+FromHex(string_char_at(doorstr,1+i*4+3))
		ds_grid_set(doors.doors,i,0,num1)
		ds_grid_set(doors.doors,i,1,num2)
	}
	var secstr = string_copy(str,17409,1024)
	for (var i = 0; i < 256; i++)
	{
		var n1 = FromHex(string_char_at(secstr,1+i*4))*16+FromHex(string_char_at(secstr,1+i*4+1))
		var n2 = FromHex(string_char_at(secstr,1+i*4+2))
		var n3 = FromHex(string_char_at(secstr,1+i*4+3))
		ds_grid_set(doors.secrets,i,0,n1)
		ds_grid_set(doors.secrets,i,1,n2)
		ds_grid_set(doors.secrets,i,2,n3)
		
	}
}