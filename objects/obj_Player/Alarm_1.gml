var bullets_left = shot_count -1;
if (bullets_left > 0) {
	audio_play_sound(snd_playerBullet,1, false);
    var shoot_x = x + sign(image_xscale) * 170;
    var shoot_y = y - 28;
    instance_create_layer(shoot_x, shoot_y, "Instances", obj_playerBullet);

    bullets_left -= 1;

    if (bullets_left > 0) {
        alarm[1] = game_get_speed(gamespeed_fps) * 0.1; // keep shooting until done
    }
}
