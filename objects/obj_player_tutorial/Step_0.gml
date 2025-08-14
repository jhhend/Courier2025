//move and shoot functions
player_input();
script_execute(state);
player_shoot_tutorial();

//screenshot
if keyboard_check_pressed(vk_f12) {
    screenshot();
}

//rolling
if rollleft && canroll == true {
    state = player_roll(RLEFT);
} else if rollright && canroll == true {
    state = player_roll(RRIGHT);
}

