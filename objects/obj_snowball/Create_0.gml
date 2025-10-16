if (instance_exists(obj_boss)) {
	with (obj_boss) {
		// Determine direction
		other.image_xscale = sign(image_xscale);
		
		// Determine speed (faster if enraged)
		if (boss_enraged()) {
			other.shot_speed = 18;
		}
		
		other.hspeed = other.shot_speed * sign(image_xscale);
	}
}