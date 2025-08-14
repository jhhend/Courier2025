// up/down movement
if keyboard_check_pressed(vk_anykey) && canleave == true{
    global.shields = global.maxshields;
    room_goto(rm_worldmap);
}

