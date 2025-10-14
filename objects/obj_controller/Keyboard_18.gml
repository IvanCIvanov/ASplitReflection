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