// Face player when not attacking
if (instance_exists(obj_Player) && sprite_index == spr_bossIdle) {
	var player_x = obj_Player.x;
	if (player_x > x) {
		// Player is to the right of boss; make boss face right
		image_xscale = 2;
	}
	else {
		// Same thing for left
		image_xscale = -2;
	}
}

// Boss becomes more aggro once reaching half health
if (boss_enraged()) {
	attack_interval = 100;
	idle_imgspeed = 1.5;
	attack_imgspeed = 2;
}

if (hp <= 0) {
	// Create an instance of death_object, then destroys itself
	audio_play_sound(snd_shatter, 1, false);
	instance_create_layer(x, y, "Instances", death_object);
	instance_destroy();
}

// Sprite management
if (sprite_index == spr_bossIdle) {
	image_speed = idle_imgspeed;
}
else if (sprite_index == spr_bossAttack) {
	if (image_index >= image_number - 1) {
		// Change sprite once animation finishes
		sprite_index = spr_bossIdle;
		image_index = 0;
	}
}