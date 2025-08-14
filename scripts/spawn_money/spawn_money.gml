/// @description spawn_money(lowbound, highbound);
/// @param lowbound
/// @param  highbound
function spawn_money(argument0, argument1) {

	var o;
	    o = irandom_range(argument0, argument1);
	repeat (o) {
	    instance_create(x, y, obj_money);
	}



}
