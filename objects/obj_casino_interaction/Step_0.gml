if global.state.money < minbet {
    for (var i = 0; i <= 5; i++) {
        text[i] = "$" + string(minbet) + " REQUIRED FOR BUY IN";
    }
    text[5] = "Back";
} else {
    text[0] = "Spin with 1/16 Bet + ($" + string(floor(global.state.money/16))+")";
    text[1] = "Spin with 1/8 Bet + ($" + string(floor(global.state.money/8))+")";
    text[2] = "Spin with 1/4 Bet + ($" + string(floor(global.state.money/4))+")";
    text[3] = "Spin with 1/2 Bet + ($" + string(floor(global.state.money/2))+")";
    text[4] = "Spin with ALL IN + ($" + string(global.state.money)+")";
    text[5] = "Back";
}

//up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

//select
if keyboard_check_pressed(vk_enter) {
    var b;
    switch (placement) {
        case 0: //16thr
            if global.state.money >= minbet {
                b = 16
                bet_amount(b);
                global.bettype = b;
                room_goto(rm_casino_spin);
            }
            break;
        case 1: //8th
            if global.state.money >= minbet {
                b = 8;
                bet_amount(b)
                global.bettype = b;
                room_goto(rm_casino_spin);  
            } 
            break;
        case 2: //4th
            if global.state.money >= minbet {
                b = 4;
                bet_amount(b);
                global.bettype = b;
                room_goto(rm_casino_spin);
            }
        case 3: //half
            if global.state.money >= minbet {
                b = 2;
                bet_amount(b);
                global.bettype = b;
                room_goto(rm_casino_spin);
            }
            break;
        case 4: //all in
            if global.state.money >= minbet {
                b = 1;
                bet_amount(b);
                global.bettype = b;
                room_goto(rm_casino_spin);
            }
            break;
        case 5: //back
            global.prevroom = room;
            room_goto(rm_Bask_Minor);
            break;
    }
    play_sound(snd_select, 1, false);
}


