if !instance_exists(partner) {
    destroy_self();
}

if !collision_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), self, true, false) {
    destroy_self();
}

if instance_exists(obj_dropoff) && collision_circle(obj_dropoff.x, obj_dropoff.y, obj_dropoff.radius, self, true, false) {
    instance_create(x, y, obj_explosion);
    destroy_self();
}

if instance_exists(obj_criminal) && collision_circle(obj_criminal.x, obj_criminal.y, obj_criminal.radius, self, true, false) {
    instance_create(x, y, obj_explosion);
    destroy_self();
}

if instance_exists(obj_thiefboss) && collision_circle(obj_thiefboss.x, obj_thiefboss.y, obj_thiefboss.radius, self, true, false) {
    instance_create(x, y, obj_explosion);
    destroy_self();
}

