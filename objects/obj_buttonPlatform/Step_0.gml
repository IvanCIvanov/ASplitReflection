// Platforms can move only when the player pushes the button
if (can_move) {
	visible = true;
	move_towards_point(target_x, target_y, 5);
	
	
	if (point_distance(x, y, target_x, target_y) < 5) {
        x = target_x;
        y = target_y;
        speed = 0;
        can_move = false;
    }
}