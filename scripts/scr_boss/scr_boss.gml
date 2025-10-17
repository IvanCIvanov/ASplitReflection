/// @desc Function to determine if the boss is enraged
/// @return True if boss is alive and has at most half its HP, false otherwise
function boss_enraged() {
	return (hp > 0) && (hp <= (max_hp / 2));
}

/// @desc Function to trigger boss's swipe attack
function swipe_attack() {
	// Change sprite to attack sprite
	sprite_index = spr_bossAttack;
	image_index = 0;
	image_speed = attack_imgspeed;
	
	
	// Determine where to spawn the hurtbox
	var spawn_x = x + 450 * sign(image_xscale);
	var spawn_y = y + 300;
	
	// Creates hurtbox in front of boss
	instance_create_layer(spawn_x, spawn_y, "Instances", obj_bossSwipe);
}

/// @desc Function to trigger boss's snowball attack
function snowball_attack() {
	// Change sprite to attack sprite
	sprite_index = spr_bossAttack;
	image_index = 0;
	image_speed = attack_imgspeed * 1.5; // slightly faster animation than swipe
	
	// Determine where to spawn the snowball
	var spawn_x = x + 100 * sign(image_xscale);
	var spawn_y = y + 384;
	
	
	// Create new snowball instance
	instance_create_layer(spawn_x, spawn_y, "Instances", obj_snowball);
	
	
}