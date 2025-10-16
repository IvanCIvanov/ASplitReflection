// Set alarm for delayed start if needed
alarm[0] = game_get_speed(gamespeed_fps) * 3;

// Get player position
var player = instance_find(obj_Player, 0);
if (player != noone) {
    spawnX = player.x+300*5;
    spawnY = player.y + 300;
}

// Draw depth
depth = -1000;

// Fade variables
image_alpha = 0;
fade = 0.04; // alpha increment per step
fade_started = false; // flag for fade start


