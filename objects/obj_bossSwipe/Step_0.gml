if (current_frame > spawn_frame) {
	// Sprite appears after a couple frames
	sprite_index = swipe_sprite;
}

if (current_frame >= destroy_frame) {
	// Destroy object once "animation" finishes
	instance_destroy();
}

current_frame++;