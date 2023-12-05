// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ToBinary(num,dep){
	var xx = num
	var bin = "";
	while (xx > 0)
	{
		bin = string_concat(xx%2,bin)
		xx = floor(xx/2)
	}
	while (string_length(bin) < dep)
	{
		bin = "0" + bin	
	}
	//show_debug_message(bin)
	return bin
}