y -= .5;

if keyboard_check_pressed(vk_anykey) {
    room_goto(rm_menu);
}

if y < -(height+64) {
    room_goto(rm_menu);
}

