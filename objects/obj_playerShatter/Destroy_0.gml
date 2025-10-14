if (global.lives > 0) {
	// Restart room if player has lives left
	room_restart();
}
else {
	// Game over if player runs out of lives
	room_goto(loseScreen);
}