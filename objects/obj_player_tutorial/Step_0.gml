//move and shoot functions
player_input();
if (is_method(state)) {
	state();
}
player_shoot_tutorial();

//screenshot
if keyboard_check_pressed(vk_f12) {
    screenshot();
}

//rolling
if rollleft && canroll {
    state = player_roll(RLEFT);
} else if rollright && canroll {
    state = player_roll(RRIGHT);
}

