// Horizontal movement
if (keyboard_check(vk_right)) {
    x += xspeed;
}
if (keyboard_check(vk_left)) {
    x -= xspeed;
}

// Apply gravity first
vspeed += gravity_effect;

// Vertical movement with collision
y += vspeed;

// If we're now colliding with floor, push out and stop
if (place_meeting(x, y, obj_floor)) {
    // Only resolve collision if we were moving downward (landing on top)
    if (vspeed > 0) {
        // Push out of floor pixel by pixel (upward)
        while (place_meeting(x, y, obj_floor)) {
            y -= 1;
        }
        vspeed = 0;
    }
    // If moving upward (hitting from below), push down and stop upward movement
    else if (vspeed < 0 ) {
        // Push out of floor pixel by pixel (downward)
        while (place_meeting(x, y, obj_floor)) {
            y += 1;
        }
        vspeed = 0;
    }
	// If vspeed is 0 (edge case), push down to prevent phasing up
    else {
        // Push out downward (safer default - prevents going through platforms)
        while (place_meeting(x, y, obj_floor)) {
            y += 1;
        }
        vspeed = 0;
    }
}

// Check if on ground AFTER collision resolution
var on_ground = place_meeting(x, y + 1, obj_floor);

// Jump start
if (keyboard_check_pressed(vk_up) && on_ground) {
    vspeed = jump_speed; // negative = upward (e.g., -10)
    jump_time = jump_time_max;
}

// Variable height jump (hold to jump higher)
if (keyboard_check(vk_up) && jump_time > 0) {
    vspeed += jump_speed * 0.15; // Add smaller upward boost
    jump_time -= 1;
}

// If jump key released, stop "extra lift"
if (keyboard_check_released(vk_up)) {
    jump_time = 0;
}

// Sprite alterations
if (vspeed > 0 && !on_ground) {
    sprite_index = spr_playerFall;
}
else if (vspeed < 0 && !on_ground) {
    sprite_index = spr_playerJump;
}
else if ((keyboard_check(vk_left) || keyboard_check(vk_right)) && on_ground) {
    sprite_index = spr_playerIdle; // replace this with run animation later
}
else if (on_ground) {
    sprite_index = spr_playerIdle;
}