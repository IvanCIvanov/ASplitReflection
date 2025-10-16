// Activate boss fight
if (instance_exists(obj_boss)) {
	with (obj_boss) {
		is_active = true;
		alarm[0] = attack_interval;
	}
	
	// Destroy trigger object
	instance_destroy();
}