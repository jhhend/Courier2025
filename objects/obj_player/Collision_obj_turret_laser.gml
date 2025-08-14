shake = 10;
play_sound(snd_error, 1, false);
if global.shields <= 0 {
    fine_destroyed();
} else {
    global.shields--;
}


destroy_other();

