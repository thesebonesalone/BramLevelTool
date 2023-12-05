// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FromBinary(binstr){
	var i = 0
	//check bits
	if (string_char_at(binstr,1) == "1") i += 32
	if (string_char_at(binstr,2) == "1") i += 16
	if (string_char_at(binstr,3) == "1") i += 8
	if (string_char_at(binstr,4) == "1") i += 4
	if (string_char_at(binstr,5) == "1") i += 2
	if (string_char_at(binstr,6) == "1") i += 1
	
	return i
}