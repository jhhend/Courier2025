
if (global.faction != FactionType.Cult) {
    if (global.shields <= 0) {
        fine_destroyed();
    } else {
        global.shields--;
    }
    
    with (other) {
        var i = id;
        var e = instance_create(x, y, obj_explosion);
        with (e) {
            creator = i;
            image_xscale = creator.image_xscale;
            image_yscale = creator.image_yscale;
        }
        instance_destroy();
    }
}
