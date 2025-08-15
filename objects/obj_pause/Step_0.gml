if keyboard_check_pressed(vk_escape) {
    if !pause {
        instance_deactivate_all(true);
        for (var j = 0; j <= staramount; j++) {
            bkxcoord[j] = random_range(__view_get( e__VW.XView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ));
            bkycoord[j] = random_range(__view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ));
            bkscale[j] = random_range(.5, .9);
            bkcolor[j] = choose_colors(-1);
            bkalpha[j] = random_range(.25, .75);
            bkangle[j] = random(360);
        }
        pause = true;
    }
}

if pause {
    if keyboard_check_pressed(ord("W")) && placement > 0 {
        placement -= 1;
    } else if keyboard_check_pressed(ord("S")) && placement < (array_length(text) - 1) {
        placement += 1;
    }
    
    if keyboard_check_pressed(vk_enter) {
        switch (placement) {
            case 0:
                pause = false;
                instance_activate_all();
                break;
            case 1:
                if audio_is_playing(mus_gameworld) {
                    audio_stop_sound(mus_gameworld);
                }
                room_goto(rm_init);
                break;
        }
    }
}

