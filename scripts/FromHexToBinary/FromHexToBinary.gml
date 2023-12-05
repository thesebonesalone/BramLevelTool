// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FromHexToBinary(st){
	var bstr = ""
	for (var i = 0; i < string_length(st); i ++)
	{
		var n = FromHex(string_char_at(st,i+1))
		bstr += ToBinary(n,8)
	}
	return bstr

}