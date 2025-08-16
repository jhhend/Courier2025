// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //shields 1
            if (global.state.money >= real(price[placement]) && global.state.shd == 0) {
                global.state.money -= real(price[placement]);
                global.state.shd = 1;
                global.maxshields = 1;
                global.shields = global.maxshields;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 1: //shields 2
            if (global.state.money >= real(price[placement]) && global.state.shd == 1) {
                global.state.money -= real(price[placement]);
                global.state.shd = 2;
                global.maxshields = 2;
                global.shields = global.maxshields;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 2: //shields 3
            if (global.state.money >= real(price[placement]) && global.state.shd == 2) {
                global.state.money -= real(price[placement]);
                global.state.shd = 3;
                global.maxshields = 3;
                global.shields = global.maxshields;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 3: //weapons 1
            if (global.state.money >= real(price[placement]) && global.state.wep == 0) {
                global.state.money -= real(price[placement]);
                global.state.wep = 1;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 4: //weapons 2
            if (global.state.money >= real(price[placement]) && global.state.wep == 1) {
                global.state.money -= real(price[placement]);
                global.state.wep = 2;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 5: //weapons 3
            if (global.state.money >= real(price[placement]) && global.state.wep == 2) {
                global.state.money -= real(price[placement]);
                global.state.wep = 3;
                play_sound(snd_purchase, 1, false);
            }
            break;        
        case 6: //systems 1
            if (global.state.money >= real(price[placement]) && global.state.hud == 0) {
                global.state.money -= real(price[placement]);
                global.state.hud = 1;
                play_sound(snd_purchase, 1, false);
            }
            break; 
        case 7: //systems 2
            if (global.state.money >= real(price[placement]) && global.state.hud == 1) {
                global.state.money -= real(price[placement]);
                global.state.hud = 2;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 8: //systems 3
            if (global.state.money >= real(price[placement]) && global.state.hud == 2) {
                global.state.money -= real(price[placement]);
                global.state.hud = 3;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 9: //back
            global.prevroom = room;
            play_sound(snd_select, 1, false);
            room_goto(rm_worldmap)
            break;
    }
}

//update text
set_shop_buttons();

