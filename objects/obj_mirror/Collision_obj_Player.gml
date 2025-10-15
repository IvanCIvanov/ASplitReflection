// Go to next level once mirror has been repaired
if (is_repaired) {
	global.lives = 3;
	global.shards = 0;
	global.shards_total = 0;
	room_goto_next();
}