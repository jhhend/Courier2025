/// @description choose_colors(zone)
/// @param zone
function choose_colors(argument0) {
	var col;
	switch argument0 {
	    case 0: //majorin
	        col = choose(c_aqua, c_white, c_yellow, c_orange);
	        break;
	    case 1: //axion
	        col = choose(c_lime, c_white, c_yellow, c_green);
	        break;
	    case 2: //korda
	        col = choose(c_fuchsia, c_purple, c_white, c_yellow);
	        break;
	    case 3: //bask
	        col = choose(c_red, c_orange, c_yellow, c_white);
	        break;
	    case 4: //paradise
	        col = make_colour_hsv(random_range(15, 45), 255, 255);
	        break;
	    case 5: //custom
	        var range;
	            range = 15;
	        if global.endcolor != c_white {
	            c = colour_get_hue(global.endcolor);
	            col = make_colour_hsv(random_range(c-range, c+range), 255, 255);
	        } else {
	            c = colour_get_saturation(global.endcolor);
	            col = make_colour_hsv(0, random_range(c, c+5), 255);
	        }
	        break;
	    case -1: //all white
	        col = c_white;
	        break;
	}

	return col;
}
