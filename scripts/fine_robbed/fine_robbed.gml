/// @description fine_robbed()
function fine_robbed() {
	var rob_temp;
	    rob_temp = irandom_range(floor(global.money/16), floor(global.money/12));
	if rob_temp > global.money {
	    global.fine = global.money;
	} else if rob_temp <= global.money {
	    global.fine = rob_temp;
	}

	jettison_cargo();
	room_goto(rm_robbed);



}
