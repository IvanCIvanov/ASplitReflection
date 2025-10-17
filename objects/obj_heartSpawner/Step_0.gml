if (!instance_exists(obj_heartPickup) && alarm[1] <= 0) {
    alarm[1] = game_get_speed(gamespeed_fps) * 20;
}
