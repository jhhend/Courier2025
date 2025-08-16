for (var i = 0; i <= staramount; i++) {
    if bkxcoord[i] >= room_width {
        bkxcoord[i] = 0;
    } else if bkxcoord[i] < room_width {
        bkxcoord[i] = bkxcoord[i] + .5;
    }
}

// up/down movement
if keyboard_check_pressed(ord("W")) && placement > 0 {
    placement -= 1;
} else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
    placement += 1;
}

// select
if keyboard_check_pressed(vk_enter) {
    switch (placement) {
        case 0: //sound
			global.settings.toggle("sound");
            play_sound(snd_select, 1, false);
            break;
        case 1: //music
			global.settings.toggle("music");
						
            if audio_is_playing(mus_mainmenu) && !global.settings.get("music") {
                audio_stop_sound(mus_mainmenu);
            } else if !audio_is_playing(mus_mainmenu) && global.settings.get("music") {
                play_music(mus_mainmenu, 1, true);
            }
            play_sound(snd_select, 1, false);
            break;
        case 2: //fullscreen
			global.settings.toggle("fullscreen");
			window_set_fullscreen(global.settings.get("fullscreen"));
            play_sound(snd_select, 1, false);
            break;
        case 3: //fps counter
			global.settings.toggle("showFps");
            play_sound(snd_select, 1, false);
            break;
        case 4: //delete save
            if file_exists("save.sav") {
                play_sound(snd_select, 1, false);
                room_goto(rm_deleteconfirm);
            } else {
                drawtext = true;
                alarm[0] = room_speed;
                play_sound(snd_error, 1, false);
            }
            break;
        case 5: //back
            play_sound(snd_select, 1, false);
            save_options();
            room_goto(rm_menu);
            break;
    }
}

//update text
text[0] = $"Sound: {global.settings.get("sound") ? "On" : "Off"}";
text[1] = $"Music: {global.settings.get("music") ? "On" : "Off"}";
text[2] = $"Fullscreen: {global.settings.get("fullscreen") ? "On" : "Off"}";
text[3] = $"FPS Counter: {global.settings.get("showFps") ? "On" : "Off"}";
text[4] = "Delete Save";
text[5] = "Back";


