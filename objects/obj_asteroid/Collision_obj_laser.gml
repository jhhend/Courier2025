//create explosion
var i, e;
    i = id;
    e = instance_create(x, y, obj_explosion);
with (e) {
    creator = i;
    image_xscale = creator.image_xscale;
    image_yscale = creator.image_yscale;
}

//create other asteroid off screen once destroyed
var xx, yy;
    xx = choose(irandom_range(0, __view_get( e__VW.XView, 0 )), irandom_range(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), room_width));
    yy = choose(irandom_range(0, __view_get( e__VW.YView, 0 )), irandom_range(__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), room_height));
instance_create(xx, yy, obj_asteroid);

//spawn money
spawn_money(0, 4);

//destroy self and laser
destroy_self();
destroy_other();

