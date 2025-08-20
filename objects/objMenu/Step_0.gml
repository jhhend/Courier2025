
var current = getCurrentMenu();
if (current == undefined) { exit; }

// Up/down movement
if (keyboard_check_pressed(ord("W"))) {
	current.cursorUp();
} else if (keyboard_check_pressed(ord("S"))) {
	current.cursorDown();
}

// Select option
if (keyboard_check_pressed(vk_enter)) {
	current.action();
}
