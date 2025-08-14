//calculate position of each star
for (var i = 0; i <= amount; i++) {
    xcoord[i] = x + lengthdir_x(distance[i], dir[i] + condir[i]);
    ycoord[i] = y + lengthdir_y(distance[i], dir[i] + condir[i]);
    condir[i] = condir[i] + const[i];
}

if collision_circle(x, y, dist, obj_player, true, false) {
    draw = true;
    if keyboard_check_pressed(vk_enter) {
        room_goto(rm_Paradise);
    }
} else {
    draw = false;
}

