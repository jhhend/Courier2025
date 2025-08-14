/// @description spawn_police()
function spawn_police() {
	repeat (3) {
	    var r, xx, yy;
	        r = 128;
	        xx = irandom_range(obj_dropoff.x-r, obj_dropoff.x+r);
	        yy = irandom_range(obj_dropoff.y-r, obj_dropoff.y+r);
	    instance_create(xx, yy, obj_police);
	}



}
