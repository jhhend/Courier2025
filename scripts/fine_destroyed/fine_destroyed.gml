/// @description fine_destroyed()
function fine_destroyed() {
	var dest_temp 
	    dest_temp = ceil(global.state.money*(1/8));
	if dest_temp > global.state.money {
	    global.fine = global.state.money;
	} else if dest_temp <= global.state.money {
	    global.fine = dest_temp;
	}

	jettison_cargo();
	room_goto(rm_destroyed);
}
