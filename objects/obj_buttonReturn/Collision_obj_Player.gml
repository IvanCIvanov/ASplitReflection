// Only allow press if cooldown finished
if (alarm[0] <= 0) {
    with (obj_buttonPlatform) {
        can_move = true;
    }

    // 1-second button cooldown
    alarm[0] = game_get_speed(gamespeed_fps) * 1;
}