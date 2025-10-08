// If henchman is about to fall off a ledge...
if (!place_meeting(x + sprite_xoffset / 2, y + 4, obj_floor)) {
	// ...start moving in the other direction
	hsp *= -1;
}

// If henchman bumps into a wall...
if (place_meeting(x + hsp * 2, y, obj_floor)) {
	hsp *= -1;
}

x += hsp;