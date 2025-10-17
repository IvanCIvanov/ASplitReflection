// Ensure sprite faces the correct direction
if (hsp != 0) {
	image_xscale = 2.5*sign(hsp);
}

// Player death
if (hp <= 0) {
	// Create an instance of death_object, then destroys it
	audio_play_sound(snd_shatter, 1, false);
	instance_create_layer(x, y, "Instances", death_object);
	instance_destroy();
}