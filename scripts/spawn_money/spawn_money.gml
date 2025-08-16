
function spawn_money(lowBound, highBound) {
	var o = irandom_range(lowBound, highBound);
	repeat (o) {
	    instance_create(x, y, obj_money);
	}
}
