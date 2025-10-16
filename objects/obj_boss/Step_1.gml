event_inherited();

// If the player is alive...
if (instance_exists(obj_Player)) {
	// ...calculate distance between boss and player
	target_x = obj_Player.x;
	target_y = obj_Player.y;
}
else {
	// Use boss's position as the target otherwise
	target_x = x;
	target_y = y;
}