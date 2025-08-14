global.podspawn = false;
global.questphase++;

var i = id;
var e = instance_create(x, y, obj_explosion);
with (e) {
    image_xscale = id.image_xscale*1.75;
    image_yscale = id.image_yscale*1.75;
}

repeat (2) {
    play_sound(snd_explode, 1, false);
}

instance_create(x, y, obj_gem);

