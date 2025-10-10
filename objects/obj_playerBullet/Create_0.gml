if (instance_exists(obj_Player)) {
	with (obj_Player) {
		// Determine direction
		other.image_xscale = image_xscale;
		// Set the speed
		other.hspeed = other.shot_speed * sign(image_xscale);
	}
}