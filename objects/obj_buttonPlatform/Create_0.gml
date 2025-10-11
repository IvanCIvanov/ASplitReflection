// Initialize starting coords
start_x = x;
start_y = y;

if (instance_exists(goto)) {
	// Find target coords (e.g., coords of nearest existing buttonPlatGoto object)
	var inst = instance_nearest(start_x, start_y, goto);
	target_x = inst.x;
	target_y = inst.y;
}
else {
	// If there are no buttonPlatGoto objects, set target coords equal to starting coords
	target_x = start_x;
	target_y = start_y;
}