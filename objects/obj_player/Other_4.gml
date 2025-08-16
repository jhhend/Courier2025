if (room != rm_worldmap && room != rm_paradise_worldmap && room != rm_Paradise && room != rm_sandbox_worldmap && room != rm_Sandbox) {
    instance_create(x, y, obj_dropoff);
} else if room == rm_Paradise && global.podspawn {
    instance_create(x, y, obj_pod);
} else if room == rm_Paradise && !global.podspawn && global.questphase == 2 {
    instance_create(x, y, obj_gem);
} else if room == rm_sandbox_worldmap {
    instance_create(x, y, obj_sandbox_worldmap);
}

if (room == rm_Sandbox && global.endspawn) {
    repeat(50) {
        var ax, ay;
            ax = irandom_range(0, room_width);
            ay = irandom_range(0, room_height);
            instance_create(ax, ay, obj_asteroid);
    }
    
    var amount;
    switch (global.endentityamount) {
        case FEW:
            amount = 10; break;
        case SOME:
            amount = 15; break;
        case MANY:
            amount = 50; break;
        case EXTREME:
            amount = 100; break;
    }
    
    if global.endentity != noone {
        repeat (amount) {
        var xx, yy;
            xx = irandom_range(256, room_width-256);
            yy = irandom_range(256, room_height-256);
        instance_create(xx , yy, global.endentity);
        }
    }
}


