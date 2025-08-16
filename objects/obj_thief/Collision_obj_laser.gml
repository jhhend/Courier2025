//create explosion
var i, e;
    i = id;
    e = instance_create(x, y, obj_explosion);
with (e) {
    creator = i;
    image_xscale = creator.image_xscale;
    image_yscale = creator.image_yscale;
}

//spawn money
spawn_money(5, 6);

//destroy self and laser
destroy_self();
destroy_other();
global.kills++;

//reset faction if part of police faction
if global.state.faction == THIEF {
    global.state.faction = -1;
    global.state.betray = true;
}

