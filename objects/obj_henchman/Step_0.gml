// Horizontal collision
if (place_meeting(x + sign(hsp) * 5, y, obj_floor)) {	
	// Start moving in the other direction
	hsp *= -1;
}

// If henchman is about to fall, turn the other way
var left_bottom = place_meeting(bbox_left - 2, bbox_bottom + 1, obj_floor);
var right_bottom = place_meeting(bbox_right + 1, bbox_bottom + 1, obj_floor);

if (hsp < 0 && !left_bottom) {
	hsp *= -1;
}
else if (hsp > 0 && !right_bottom) {
	hsp *= -1;
}

// Vertical collision
if (place_meeting(x, y + vsp, obj_floor)) {
	// Nudge henchman against wall
	while (!place_meeting(x, y + sign(vsp), obj_floor)) {
		y += sign(vsp);
	}
	
	// Stop moving
	vsp = 0;
}

// Apply velocity
x += hsp;
y += vsp;