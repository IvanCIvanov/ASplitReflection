#region Horizontal Movement

// Calculate movement direction & speed
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
hsp = (key_right - key_left) * xspeed;

#endregion


#region Vertical Movement

var on_ground = place_meeting(x, y + 1, obj_floor);
var jump_pressed = keyboard_check_pressed(vk_up);
var jump_held = keyboard_check(vk_up);
var jump_released = keyboard_check_released(vk_up);
var boost = jump_speed * 0.15;

// Apply gravity first
vsp += gravity_effect;

// Coyote time
if (on_ground) {
	// Reset coyote_time when grounded
	coyote_time = coyote_time_max;
}
else {
	coyote_time--;
	
	// coyote_time cannot be negative
	coyote_time = max(coyote_time, 0);
}

// Jump buffer
if (jump_pressed) {
	// Reset jump_buffer when jump is pressed
	jump_buffer = jump_buffer_max;
}
else {
	jump_buffer--;
	
	// jump_buffer cannot be negative
	jump_buffer = max(jump_buffer, 0);
}

// Jump start
if (jump_buffer > 0 && coyote_time > 0) {
    vsp = jump_speed; // negative = upward
	
	// Reset jump_time
    jump_time = jump_time_max;
	
	// Reset coyote_time & jump_buffer to 0
	coyote_time = 0;
	jump_buffer = 0;
}

// Variable height jump (hold to jump higher)
if (jump_held && jump_time > 0) {
	// Add small upward boost
    vsp += boost;
    jump_time--;
}

// If jump key released, stop "extra lift"
if (jump_released) {
    jump_time = 0;
}

// Clamp vertical speed
vsp = min(vsp, max_fall);

#endregion


#region Colliding w/ Walls

if (place_meeting(x + hsp, y, obj_floor)) {
	while (!place_meeting(x + sign(hsp), y, obj_floor)) {
		x += sign(hsp);
	}
	
	// Stop moving
	hsp = 0;
}

if (place_meeting(x, y + vsp, obj_floor)) {
	while (!place_meeting(x, y + sign(vsp), obj_floor)) {
		y += sign(vsp);
	}
	
	// Stop moving
	vsp = 0;
}

#endregion

// Apply movement
x += hsp;
y += vsp;


#region Spritesetting

if (vsp > 0 && !on_ground) {
    sprite_index = spr_playerFall;
}
else if (vsp < 0 && !on_ground) {
    sprite_index = spr_playerJump;
}
else if (hsp != 0 && on_ground) {
    sprite_index = spr_playerIdle; // replace this with run animation later
}
else {
    sprite_index = spr_playerIdle;
}

#endregion