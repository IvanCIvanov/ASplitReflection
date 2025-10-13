if (global.lives > 0) {
	// Restart room if player has lives left
	room_restart();
}
else {
	// Game over if player runs out of lives
	// TODO go to Game Over screen instead of restarting game
	game_restart();
}