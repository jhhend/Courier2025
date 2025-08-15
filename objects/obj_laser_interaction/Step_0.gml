// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //red
            global.lasercolor = c_red;
            break;
        case 1: //orange
            global.lasercolor = c_orange;
            break;
        case 2: //yellow
            global.lasercolor = c_yellow;
            break;
        case 3: //lime
            global.lasercolor = c_lime;
            break;
        case 4: //green
            global.lasercolor = c_green
            break;
        case 5: //teal
            global.lasercolor = c_teal;
            break;        
        case 6: //blue
            global.lasercolor = c_blue;
            break; 
        case 7: //purple
            global.lasercolor = c_purple;
            break;
        case 8: //pink
            global.lasercolor = c_fuchsia;
            break;
        case 9: //back
            global.prevroom = room;
            room_goto(rm_Minoran);
            break;
    }
    play_sound(snd_select, 1, false);
}

