// Send player to win screen when boss is defeated
if (!instance_exists(obj_boss)) {
	room_goto(winScreen);
}