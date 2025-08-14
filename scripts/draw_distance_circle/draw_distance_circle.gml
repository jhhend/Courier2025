/// @description draw_distance_circle(radius, fillcol, bordercol)
/// @param radius
/// @param  fillcol
/// @param  bordercol
function draw_distance_circle(argument0, argument1, argument2) {
	draw_set_circle_precision(32);
	draw_set_alpha(.5);
	draw_set_color(argument1);
	draw_circle(x, y, argument0, false);
	draw_set_alpha(1);
	draw_set_color(argument2);
	draw_circle(x, y, argument0, true);
	draw_self();



}
