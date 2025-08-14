/// @description draw_text_parentheses(x, y, string)
/// @param x
/// @param  y
/// @param  string
function draw_text_parentheses(argument0, argument1, argument2) {
	if argument2 != "" {
	    draw_text(argument0, argument1, string_hash_to_newline("(" + string(argument2) + ")"));
	} else {
	    draw_text(argument0, argument1, string_hash_to_newline(string(argument2)));
	}



}
