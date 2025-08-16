if !cult {
    //create explosion
    var i, e;
        i = id;
        e = instance_create(x, y, obj_explosion);
    with (e) {
        creator = i;
        image_xscale = creator.image_xscale;
        image_yscale = creator.image_yscale;
    }
    
    //spawn police
    if (room != rm_Sandbox) {
        repeat (3) {
            var r, xx, yy;
                r = 128;
                xx = irandom_range(obj_dropoff.x-r, obj_dropoff.x+r);
                yy = irandom_range(obj_dropoff.y-r, obj_dropoff.y+r);
            instance_create(xx, yy, obj_police);
        }
    }
    
    //spawn money
    spawn_money(2, 5);
    
    //destroy self and laser
    destroy_self();
    destroy_other();
    if (room != rm_Sandbox) {
        global.kills++;
        global.murder++;
    }
    
    //reset faction if part of police faction
    if (global.faction == POLICE && room != rm_Sandbox) {
        global.faction = -1;
        global.state.betray = true;
    }
}

