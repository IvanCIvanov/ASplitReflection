sprite_index = noone;	// start invisible & w/ no collision

if (instance_exists(obj_boss)) {
	// If boss is currently enraged, swipe appears/disappears faster
	with (obj_boss) {
		var enraged = boss_enraged();
	}
	if (enraged) {
		spawn_frame = 10;
		destroy_frame = 20;
	}
}