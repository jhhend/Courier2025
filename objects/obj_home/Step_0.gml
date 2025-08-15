//update button text
text[0] = "Restore Shields (Currently " + string(global.shields) + "/" + string(global.maxshields) + ")";

// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //heal
            heal();
            play_sound(snd_select, 1, false);
            break;
        case 1: //deposit
            play_sound(snd_money, 1, false);
            global.savings += global.money;
            global.money = 0;
            break;
        case 2: //save
            play_sound(snd_money, 1, false);
            save();
            drawsave = true;
            alarm[0] = room_speed;
            break;
        case 3: //back
            global.prevroom = rm_home;
            play_sound(snd_select, 1, false);
            room_goto(rm_worldmap);
            break;
    }
}


