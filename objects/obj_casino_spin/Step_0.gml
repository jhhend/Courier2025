image_angle -= angleoffset;
angleoffset *= .99;
if angleoffset > .01 {
    angleoffset *= .99;
} else {
    angleoffset = 0;
    drawresult = true;
    if playsound == true {
        playsound = false;
        play_sound(sound, 1, false);
    }
}

if keyboard_check(vk_lcontrol) {
    room_restart(); 
}

if (keyboard_check_pressed(vk_anykey) && angleoffset == 0) {
    room_goto(rm_Bask_Minor);
    if (spin == 1) {
        global.pot = 3500;
    }
}

