
event_inherited();

//set position and variables
x = room_width/2;
y = room_height/2;
radius = 256;
type = CargoType.Normal;
destination = room;

//generate asteroids
repeat(50) {
    var ax, ay;
        ax = irandom_range(0, room_width);
        ay = irandom_range(0, room_height);
        instance_create(ax, ay, obj_asteroid);
}

//generate cargo
repeat(10) {
    var offset, cx, cy;
        offset = 64;
        cx = choose(    irandom_range(offset, (room_width/2) - (offset + 256)),
                        irandom_range((room_width/2) + (offset+256), room_width))
        cy = choose(    irandom_range(offset, (room_height/2) - (offset + 256)),
                        irandom_range((room_height/2) - (offset + 256), room_height));
    instance_create(cx, cy, obj_cargo);    
}

//generate criminal
var rx, ry;
    rx = irandom_range(0, room_width);
    ry = irandom_range(0, room_height);
instance_create(rx, ry, obj_criminal);

//generate room specific entities
var obj, obs, num;
switch (room) {
    case rm_Bask_Minor:
        if global.thiefspawn {
            obj = obj_thief;
        } else {
            obj = -1;
            global.thiefspawn = true;
        }
        obs = -1;
        obd = -1;
        num = 10;
        break;
    case rm_Bask_Major:
        if global.thiefspawn {
            obj = obj_thief;
        } else {
            obj = -1;
            global.thiefspawn = true;
        }
        obs = obj_thiefboss;
        obd = obj_thief_dropzone;
        num = 10;
        break;
    case rm_Axion:
        obj = obj_hive;
        obs = obj_alienboss;
        obd = obj_alien_dropzone;
        num = 20;
        break;
    case rm_Majorin:
        obj = obj_civillian;
        obs = obj_policeboss;
        obd = obj_police_dropzone;
        num = 25;
        break;
    case rm_Minoran:
        obj = obj_civillian;
        obs = -1;
        obd = -1;
        num = 6;
        break;
    case rm_Korda:
        obj = obj_cultist;
        obs = obj_cultboss;
        obd = obj_cult_dropzone;
        num = 17;
        break;
    default:
        obj = -1;
        obs = -1;
        obd = -1;
        break;
}

//spawn entities
if obj != -1 {
    var f;
    if (room != rm_Axion && room != rm_Korda) {
        f = 96;
    } else {
        f = 256;
    }
    repeat(num) {
        var xx, yy;
            xx = irandom_range(f, room_width-f);
            yy = irandom_range(f, room_height-f);
        instance_create(xx, yy, obj);
    }
}

//spawn special entity
if obs != -1 {
    var xx, yy;
        xx = irandom_range(64, 256-64);
        yy = irandom_range(64, 256-64);
    instance_create(xx, yy, obs);
        
}

//spawn special dropzone
if obd != -1 {
    var xx, yy;
        xx = irandom_range(0, room_width);
        yy = irandom_range(0, room_height);
    instance_create(xx, yy, obd);
}

if (room == rm_Korda) {
    repeat (9) {
    var xx, yy;
        xx = choose( irandom_range(256, x-radius), irandom_range(x+radius, room_width-256));
        yy = choose( irandom_range(256, y-radius), irandom_range(y+radius, room_height-256));
        instance_create(xx, yy, obj_cultistturret);
    }   
}

if room == rm_Majorin || room == rm_Minoran {
    var o;
        o = random(1);
    if o < .1 {
        instance_create(random_range(0, room_width), random_range(0, room_height), obj_rich)
    }
}

//spawn police and seal if player is wanted
if (global.murder > 0) {
    sealed = true;
    spawn_police();
} else {
    sealed = false;
}

/*
deliveryCheck = function() {
	
	// Ensure that delivery can be accepted
	if (sealed) { return; }
	
	// Check that in range
	var inRange = collision_circle(x, y, radius, obj_player, true, false);
	if (!inRange) { return; }
	
	// Check for key press
	if (!keyboard_check_pressed(vk_enter)) { return; }	
	
	// Check for illegal cargo
	if (global.cargo.hasIllegal()) {
		sealed = true;
		
		repeat (3) {
			spawn_police();
		}
		
		// Betrayal! >:)
		if (global.faction == FactionType.Republic) {
			global.faction = -1;
			global.state.betray = true;
		}
		
		return;
	}
	
	// Otherwise, deliver any normal cargo that is for this location
	global.cargo.deliver(room, CargoType.Normal);
}
*/
