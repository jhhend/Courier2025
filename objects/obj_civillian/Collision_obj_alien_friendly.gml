with (other) {
    var i, e;
        i = id;
        e = instance_create(x, y, obj_explosion);
    with (e) {
        creator = i;
        image_xscale = creator.image_xscale;
        image_yscale = creator.image_yscale;
    }
    instance_destroy();
}

//spawn money
spawn_money(2, 5);

//destroy self and alien
destroy_self();
destroy_other();
global.kills++;

