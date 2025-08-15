/// @description draw_slots
function draw_slots() {
	var dp, s, c; 
	    dp = 48+16;
	    s = "";
	    c = c_white;
	for (var i = 0; i < array_length(global.hull); i++) {
	    if global.hull[i] != " " {
	    switch global.cargostat[i] {
	        case "Legal":
	            s = "Legal"; c = c_aqua; break;
	        case "Illegal":
	            s = "Contraband"; c = c_red; break;
	        case "Police":
	            s = "Evidence"; c = c_police; break;
	        case "Thief":
	            s = "Weaponry"; c = c_thief; break;
	        case "Alien":
	            s = "Organic"; c = c_alien; break;
	        case "Cult":
	            s = "Ancient"; c = c_cult; break;
	        case "":
	            c = c_white; break;
	    }
	        draw_set_color(global.slotcol[i]);
	        draw_text(__view_get( e__VW.XView, 0 )+16, __view_get( e__VW.YView, 0 )+dp, string_hash_to_newline("Slot "  + string(i+1) + ": "+ string(global.cargoname[i]) + @"
	Destination: " + string(global.cargodest[i]) + @"
	Status: " +string(s)));        
	    } else {
	        draw_set_color(global.slotcol[i]);
	        draw_text(__view_get( e__VW.XView, 0 )+16, __view_get( e__VW.YView, 0 )+dp, string_hash_to_newline("Slot "  + string(i+1) + @": Empty
	------
	------"));
	    }
	    dp += 48;
	}
	draw_set_alpha(1);



}
