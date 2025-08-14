//transport player
if collision_circle(x, y, dist, obj_player, true, false) {
    draw = true;
    if keyboard_check_pressed(vk_enter) {
        room_goto(rm_sandbox_interaction);                      
    }
} else {
    draw = false;
}

image_angle -= .5;

