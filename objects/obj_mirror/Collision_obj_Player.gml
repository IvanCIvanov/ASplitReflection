// Go to next level once mirror has been repaired
if (is_repaired) {
	global.lives = 3;
	room_goto_next();
}