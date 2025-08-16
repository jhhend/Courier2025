/// @description bet_amount(nth)
/// @param nth
function bet_amount(argument0) {
	if global.state.money >= floor(global.state.money*(1/argument0)) && global.state.money >= minbet {
	    var bet = floor(global.state.money*(1/argument0));
	    global.state.money -= bet;
	    global.pot += bet;
	}



}
