/// @description fine_destroyed()
function fine_destroyed() {
	var dest_temp 
	    dest_temp = ceil(global.money*(1/8));
	if dest_temp > global.money {
	    global.fine = global.money;
	} else if dest_temp <= global.money {
	    global.fine = dest_temp;
	}

	jettison_cargo();
	room_goto(rm_destroyed);
}
