// Inherit the parent event
event_inherited();

// Temporary variables for keyboard input
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var press_jump = keyboard_check(vk_up);
var key_shoot = keyboard_check_pressed(ord("Z"));

// Calculate horizontal velocity
if(!locked_to_elevator){
    hsp = (key_right - key_left) * move_speed;
}

if (on_ground && !key_shoot) {
    // Set sprite to running sprite if player is on the ground
    sprite_index = spr_playerRun;
}

if (press_jump && on_ground) {
    // Apply upwards velocity
    vsp = jump_height;
    
    // Change sprite to jumping sprite, start animation on frame 0
    if(vsp < 0){
        sprite_index = spr_playerJump;
        image_index = 0;
        image_speed = 1;
    }
    // TODO play jump sound effect
}

// Limit falling speed
vsp = min(vsp, max_fallspeed);

// --- Shooting / Attack ---
if (key_shoot && can_shoot && !attacking) {
    sprite_index = spr_playerAttack;
    image_index = 0;       // start animation
    image_speed = 1;       // normal speed
    attacking = true;      // lock player during attack
    attack_pause = 0;      // last-frame pause counter

    // Spawn projectile
    var shoot_x = x + sign(image_xscale) * 170;
    var shoot_y = y - 28;
    instance_create_layer(shoot_x, shoot_y, "Instances", obj_playerBullet);

    // Shooting cooldown
    can_shoot = false;
    alarm[0] = shot_delay;
}

// --- Handle attack animation completion ---
if (attacking) {
    // Ensure sprite is attack sprite
    sprite_index = spr_playerAttack;

    // Let the sprite play through both frames
    if (image_index <= image_number - 1) {
        image_speed = 1;      // play normally
    } else {
        // Last frame reached, start 1-second pause
        image_speed = 0;      // freeze last frame
        attack_pause +=1;

        if (attack_pause >= game_get_speed(gamespeed_fps) * .5) {
            attacking = false;           // attack finished
            sprite_index = spr_playerIdle; // revert sprite
            image_speed = 1;
        }
    }
} else if (!on_ground) {
    // Player is in the air: jumping/falling
    if (vsp < 0){
        sprite_index = spr_playerJump;
    }
    if (vsp > 0){
        sprite_index = spr_playerFall;
    }

    image_speed = 1;  // let the jump animation play
} else {
    // Player is on the ground
    if (hsp != 0) sprite_index = spr_playerRun;
    else sprite_index = spr_playerIdle;
}
