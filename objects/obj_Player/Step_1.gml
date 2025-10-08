// Inherit the parent event
event_inherited();

// Temporary variables for keyboard input
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var press_jump = keyboard_check_pressed(vk_up);
var key_shoot = keyboard_check(ord("V"));

// Calculate horizontal velocity
hsp = (key_right - key_left) * move_speed;

if (on_ground && !key_shoot) {
	// Set sprite to running sprite if player is on the ground
	sprite_index = spr_playerRun;
}

if (press_jump && on_ground) {
	// Apply upwards velocity
	vsp = jump_height;
	
	// Change sprite to jumping sprite, start animation on frame 0
	sprite_index = spr_playerJump;
	
	// TODO play jump sound effect
}

// Limit falling speed
vsp = min(vsp, max_fallspeed);

if (key_shoot && can_shoot) {
	// Change sprite to attack sprite if on the ground
	if (on_ground) {
		sprite_index = spr_playerAttack;
	}
	
	// Determine position to spawn ice bullet
	var shoot_x = x + sign(image_xscale) * 177;
	var shoot_y = y - 22;
	
	// Shoot ice bullet
	instance_create_layer(shoot_x, shoot_y, "Instances", obj_playerBullet);
	
	// Disable shooting
	can_shoot = false;
	// Small delay between shooting again
	alarm[0] = shot_delay;
}