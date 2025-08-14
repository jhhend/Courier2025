/// @description player_input()
function player_input() {

	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	forward = keyboard_check(ord("W"));
	rollleft = keyboard_check_pressed(ord("Q"));
	rollright = keyboard_check_pressed(ord("E"));
	jettison = keyboard_check_pressed(ord("J"));
	fire = keyboard_check_pressed(vk_up);
	interact = keyboard_check_pressed(vk_enter);
	ability = keyboard_check(vk_space);
	abilityend = keyboard_check_released(vk_space)



}
