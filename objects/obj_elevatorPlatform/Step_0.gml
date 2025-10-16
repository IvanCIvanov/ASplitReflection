var old_y = y;

if (can_move) {
    // Move toward target using fixed speed
    var dx = target_x - x;
    var dy = target_y - y;
    var dist = sqrt(dx*dx + dy*dy);

    if (dist <= 3) {
        x = target_x;
        y = target_y;
        can_move = false;

        // Swap target for next press
        var nearestGoto = instance_nearest(x, y, gotoObj);
        var nearestReturn = instance_nearest(x, y, returnObj);

        if (nearestGoto != noone && point_distance(x, y, nearestGoto.x, nearestGoto.y) < 3) {
            if (nearestReturn != noone) {
                target_x = nearestReturn.x;
                target_y = nearestReturn.y;
            }
        } else if (nearestReturn != noone && point_distance(x, y, nearestReturn.x, nearestReturn.y) < 3) {
            if (nearestGoto != noone) {
                target_x = nearestGoto.x;
                target_y = nearestGoto.y;
            }
        }
    } else {
        // Normalize movement for consistent speed
        x += 3 * dx / dist;
        y += 3 * dy / dist;
    }
}

// Vertical speed for player sync
platform_vsp = y - old_y;
