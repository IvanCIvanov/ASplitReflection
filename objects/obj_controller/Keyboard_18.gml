// Cheat codes

// Alt + R - Restart room
if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

// Alt + G - Restart game
if (keyboard_check_pressed(ord("G"))) {
	game_restart();
}

// Alt + L - Reset lives
if (keyboard_check_pressed(ord("L"))) {
	global.lives = 3;
}

// Alt + I - Toggle godmode
if (keyboard_check_pressed(ord("I"))) {
	if (global.invuln) {
		global.invuln = false;
	}
	else {
		global.invuln = true;
	}
}