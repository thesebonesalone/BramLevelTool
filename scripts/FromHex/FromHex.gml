// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FromHex(str){
	var compare_st = "0123456789ABCDEF"
	
	for (var i = 0; i < 16; i ++)
	{
		if (string_char_at(compare_st,i+1) == str) return i
	}
	
	return 0
}