var i, e;
    i = id;
    e = instance_create(x, y, obj_explosion);
with (e) {
    creator = i;
    image_xscale = creator.image_xscale+.75;
    image_yscale = creator.image_yscale+.75;
}

play_sound(snd_explode, 1, false);
destroy_self();

