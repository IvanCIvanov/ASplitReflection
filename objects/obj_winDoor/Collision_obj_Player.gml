// Send player to win screen when boss is defeated
if (!instance_exists(obj_boss)) {
	// Reset shards and lives
	global.lives = 0;
	global.shards = 0;
	// Go to win screen
	room_goto(winScreen);
}