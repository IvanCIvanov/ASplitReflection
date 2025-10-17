if(room == bossRoom){
	audio_stop_sound(snd_bossMusic);
	audio_play_sound(snd_ambientMusic, 1, false);
}