// up/down movement
if keyboard_check_pressed(vk_anykey) && canleave{
    room_goto(rm_worldmap);
    global.murder = 0;
}

