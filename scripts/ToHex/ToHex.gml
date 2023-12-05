// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ToHex(dec,len){
	
	var hex = "";
	
	if (dec < 0) {
		len = max(len,ceil(logn(16,2 * abs(dec))));
	}
	var dig = "0123456789ABCDEF"
	while (len-- || dec) {
		hex = string_char_at(dig, (dec & $F) + 1) + hex;
		dec = dec >> 4;
	}
	
	return hex;
}