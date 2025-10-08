// Ensure sprite faces the correct direction
if (hsp != 0) {
	image_xscale = sign(hsp);
}

// Player death
if (hp <= 0) {
	// Create an instance of death_object, then destroys it
	instance_create_layer(x, y, "Instances", death_object);
	instance_destroy();
}