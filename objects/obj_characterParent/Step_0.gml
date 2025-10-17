// Horizontal collision
if (place_meeting(x + hsp, y, obj_floor)) {
	// Nudge player against wall
	while (!place_meeting(x + sign(hsp), y, obj_floor)) {
		x += sign(hsp);
	}
	
	// Stop moving
	hsp = 0;
}

// Vertical collision
if (place_meeting(x, y + vsp, obj_floor)) {
	// Nudge player against wall
	while (!place_meeting(x, y + sign(vsp), obj_floor)) {
		y += sign(vsp);
	}
	
	// Stop moving
	vsp = 0; 
}

                                