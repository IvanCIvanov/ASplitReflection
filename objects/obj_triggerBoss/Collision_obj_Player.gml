// Activate boss fight
if (instance_exists(obj_boss)) {
	with (obj_boss) {
		is_active = true;
		alarm[0] = attack_interval;
	}
	
	// Destroy trigger object
	instance_destroy();
}

audio_stop_sound(snd_ambientMusic);
audio_play_sound(snd_bossMusic, 1, true);