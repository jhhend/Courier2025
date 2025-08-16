if hp <= 0 {
    if !hasspawned {
        repeat(7) {
            offset = irandom_range(-4, 4);
            instance_create(x+offset, y+offset, obj_alien);
        }
        hasspawned = true;
        if alarm[0] < 0 {
            alarm[0] = room_speed*2;
        }
    }
    //create explosion
    var i, e;
        i = id;
        e = instance_create(x, y, obj_explosion);
    with (e) {
        depth = -1;
        creator = i;
        image_xscale = (creator.image_xscale);
        image_yscale = (creator.image_yscale);
    }
    
    //destroy self if hp is 0 and laser
    var i, e;
    i = id;
    e = instance_create(x, y, obj_explosion);
    with (e) {
        depth = -1;
        creator = i;
        image_xscale = (creator.image_xscale)*2;
        image_yscale = (creator.image_yscale)*2;
    }
    destroy_self();
    destroy_other();    
    //reset faction if part of cult faction
    if global.state.faction == ALIEN {
        global.state.faction = -1;
        global.state.betray = true;
    }    
} else {
    //create explosion
    var i, e;
        i = id;
        e = instance_create(x, y, obj_explosion);
    with (e) {
        depth = -1;
        creator = i;
        image_xscale = (creator.image_xscale*2);
        image_yscale = (creator.image_yscale*2);
    }
    destroy_other();
    hp--;
} 

