sprite_index = noone;	// start invisible & w/ no collision
var enraged;
if (instance_exists(obj_boss)) {
	// If boss is currently enraged, swipe appears/disappears faster
	with (obj_boss) {
		 enraged = boss_enraged();
	}
	if (enraged) {
		spawn_frame = 10;
		destroy_frame = 20;
	}
}