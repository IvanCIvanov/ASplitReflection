can_move = false;

// Initialize target to nearest Goto object
if (instance_exists(gotoObj)) {
    var nearest = instance_nearest(x, y, gotoObj);
    target_x = nearest.x;
    target_y = nearest.y;
} else {
    target_x = x;
    target_y = y;
}