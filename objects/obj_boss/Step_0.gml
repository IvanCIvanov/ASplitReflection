event_inherited();

// Wait until boss is activated
if (!is_active) {
	exit;
}

// Once able to attack again, choose an attack to do
if (can_attack) {
	if ((abs(target_x - x) > attack_radius)) {
		// Player outside radius -> snowball attack
		snowball_attack();
	}
	else {
		// Player within radius -> swipe attack
		swipe_attack();
	}
	
	can_attack = false;	// only attack once
	alarm[0] = attack_interval;
}