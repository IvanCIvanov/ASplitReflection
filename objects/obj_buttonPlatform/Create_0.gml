can_move = false;
visible = false;

// Initialize target to nearest Goto object
if (instance_exists(obj_buttonPlatGoto)) {
    var nearest = instance_nearest(x, y, obj_buttonPlatGoto);
    target_x = nearest.x;
    target_y = nearest.y;
} else {
    target_x = x;
    target_y = y;
}