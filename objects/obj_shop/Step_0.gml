// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length_1d(text) - 1) {
    placement += 1;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //shields 1
            if (global.money >= real(price[placement]) && global.shd == 0) {
                global.money -= real(price[placement]);
                global.shd = 1;
                global.maxshields = 1;
                global.shields = global.maxshields;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 1: //shields 2
            if (global.money >= real(price[placement]) && global.shd == 1) {
                global.money -= real(price[placement]);
                global.shd = 2;
                global.maxshields = 2;
                global.shields = global.maxshields;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 2: //shields 3
            if (global.money >= real(price[placement]) && global.shd == 2) {
                global.money -= real(price[placement]);
                global.shd = 3;
                global.maxshields = 3;
                global.shields = global.maxshields;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 3: //weapons 1
            if (global.money >= real(price[placement]) && global.wep == 0) {
                global.money -= real(price[placement]);
                global.wep = 1;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 4: //weapons 2
            if (global.money >= real(price[placement]) && global.wep == 1) {
                global.money -= real(price[placement]);
                global.wep = 2;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 5: //weapons 3
            if (global.money >= real(price[placement]) && global.wep == 2) {
                global.money -= real(price[placement]);
                global.wep = 3;
                play_sound(snd_purchase, 1, false);
            }
            break;        
        case 6: //systems 1
            if (global.money >= real(price[placement]) && global.hud == 0) {
                global.money -= real(price[placement]);
                global.hud = 1;
                play_sound(snd_purchase, 1, false);
            }
            break; 
        case 7: //systems 2
            if (global.money >= real(price[placement]) && global.hud == 1) {
                global.money -= real(price[placement]);
                global.hud = 2;
                play_sound(snd_purchase, 1, false);
            }
            break;
        case 8: //systems 3
            if (global.money >= real(price[placement]) && global.hud == 2) {
                global.money -= real(price[placement]);
                global.hud = 3;
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

