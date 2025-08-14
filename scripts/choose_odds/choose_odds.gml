/// @description choose_odds(odd1, cond, else)
/// @param odd1
/// @param  cond
/// @param  else
function choose_odds(argument0, argument1, argument2) {
	/*
	    odd1 and must be whole number
	*/ 

	var odd;
	    odd = irandom_range(1, 100);
    
	if odd <= argument0 {
	    return argument2
	} else if odd > argument0 {
	    return argument1;
	}



}
