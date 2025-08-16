
function spawn_police() {
	repeat (3) {
	    var range = 128;
	    var xx = irandom_range(obj_dropoff.x - range, obj_dropoff.x + range);
	    var yy = irandom_range(obj_dropoff.y - range, obj_dropoff.y + range);
	    instance_create(xx, yy, obj_police);
	}
}
