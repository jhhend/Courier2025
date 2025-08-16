//update button text
if !global.state.ticket {
    text[1] = "Purchase Ticket ($" + string(price) + ")";
} else {
    text[1] = "PURCHASED";
}

//up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

//select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0:
            play_sound(snd_select, 1, false);
            if (global.state.ticket) {
                room_goto(rm_paradise_transport);
            }
            break;
        case 1: //purchase ticket
            if (global.state.savings >= price && !global.state.ticket) {
                play_sound(snd_money, 1, false);
                global.state.ticket = true;
                global.state.savings -= price;
                global.questphase++;
            }
            break;
        case 2: //case
            play_sound(snd_select, 1, false);
            global.prevroom = rm_depot;
            room_goto(rm_worldmap);
            break;
    }
}


