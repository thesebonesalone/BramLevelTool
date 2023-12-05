// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BinToHex(binstr){
	var n = 0
	var b = 2
	for (var i = 1; i < 8; i ++)
	{
		var str = string_char_at(binstr,8-i)
		n += b * (str == "1")
		b = b*2
	}
	n += (string_char_at(binstr,8) == "1")
	return ToHex(n,2)
}