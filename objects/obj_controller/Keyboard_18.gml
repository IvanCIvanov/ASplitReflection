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

// Alt + N - Next Room
if(keyboard_check_pressed(ord("N"))){
	room_goto_next();
}


// Alt + F - Toggle Freeze Enemy
if (keyboard_check_pressed(ord("F"))) {
    with (obj_henchman) {
        if (!frozen) {
            hsp = 0;
            frozen = true;
        } else {
            hsp = choose(-move_speed, move_speed); 
            frozen = false;
        }
    }
}

// Alt + B - Warp to Boss Room
if(keyboard_check_pressed(ord("B"))){
	room_goto(bossRoom);
}
