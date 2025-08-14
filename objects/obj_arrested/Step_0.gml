// up/down movement
if keyboard_check_pressed(vk_anykey) && canleave == true{
    room_goto(rm_worldmap);
    global.murder = 0;
}

