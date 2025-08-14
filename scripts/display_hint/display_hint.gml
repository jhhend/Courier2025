/// @description display_hint(x, y, hintvar)
/// @param x
/// @param  y
/// @param  hintvar
function display_hint(argument0, argument1, argument2) {

	draw_text(argument0, argument1, string_hash_to_newline("HINT: " + string(argument2)));



}
