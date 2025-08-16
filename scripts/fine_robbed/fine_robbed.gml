/// @description fine_robbed()
function fine_robbed() {
	var rob_temp;
	    rob_temp = irandom_range(floor(global.state.money/16), floor(global.state.money/12));
	if rob_temp > global.state.money {
	    global.fine = global.state.money;
	} else if rob_temp <= global.state.money {
	    global.fine = rob_temp;
	}

	jettison_cargo();
	room_goto(rm_robbed);
}
