//create explosion
var i, e;
    i = id;
    e = instance_create(x, y, obj_explosion);
with (e) {
    creator = i;
    image_xscale = creator.image_xscale;
    image_yscale = creator.image_yscale;
}

//destroy self and laser
destroy_self();
destroy_other();

