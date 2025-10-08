
var on_ground = place_meeting(x, y + 1, obj_floor);

// Moving left/right
if (keyboard_check(vk_left) && !place_meeting(x-move_speed,y,obj_floor)) {
	x -= move_speed;
	image_xscale = -1;
}
if (keyboard_check(vk_right) && !place_meeting(x+move_speed,y,obj_floor)) {
	x += move_speed;
	image_xscale = 1;
}

// Jumping
if (keyboard_check_pressed(vk_up) && on_ground) {
	vspeed = jump_height;
}

// Gravity
if (on_ground) {
	gravity = 0;
}
else {
	gravity = grav_speed;
}

// Limit fall speed
vspeed = min(vspeed, max_fallspeed);

if (place_meeting(x, y + vspeed, obj_floor)) {
	while (!place_meeting(x, y + sign(vspeed), obj_floor)) {
		y += sign(vspeed);
	}
	
	// Stop moving
	vspeed = 0;
}

#region Combat

if (keyboard_check_pressed(ord("V"))) {
	instance_create_layer(x, y, "Instances", obj_playerBullet);
}

#endregion

#region Spritesetting

if (on_ground) {
	if (keyboard_check(vk_left)) {
		// TODO replace this with run animation
		//sprite_index = spr_playerIdle;
	}
	else if (keyboard_check(vk_right)) {
		// TODO replace this with run animation
		//sprite_index = spr_playerIdle;
	}
	else if (keyboard_check(vk_up)) {
		sprite_index = spr_playerJump;
	}
	else {
		sprite_index = spr_playerIdle;
	}
}

if (vspeed < 0) {
	sprite_index = spr_playerJump;
}
else if (!on_ground) {
	sprite_index = spr_playerFall;
}

#endregion