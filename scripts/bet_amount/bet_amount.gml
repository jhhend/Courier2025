/// @description bet_amount(nth)
/// @param nth
function bet_amount(argument0) {
	if global.money >= floor(global.money*(1/argument0)) && global.money >= minbet {
	    var bet = floor(global.money*(1/argument0));
	    global.money -= bet;
	    global.pot += bet;
	}



}
