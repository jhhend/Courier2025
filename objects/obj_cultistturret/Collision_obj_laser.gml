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
if hp <= 0 {
    spawn_money(2, 5);
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
    global.kills++;
} else {
    hp -= 1;
}
destroy_other();

//reset faction if part of cult faction
if global.faction == CULT {
    global.faction = -1;
    global.betray = true;
}


