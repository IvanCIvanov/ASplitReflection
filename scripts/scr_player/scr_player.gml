/// @desc Function to trigger player death sequence
function player_death() {
	// TODO audio_play_sound(snd_playerDeath, 1, false);
	
	// Player loses a life
	global.lives--;
	// Reset shard counter
	global.shards = 0;
	// Shattering animation plays
	instance_create_layer(x, y, "Instances", obj_playerShatter);
	// Destroy player object
	instance_destroy();
}