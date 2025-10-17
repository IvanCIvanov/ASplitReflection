// Inherit the parent event
event_inherited();

// Variables for keyboard input
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
	var randVar = irandom_range(1,3);
	switch randVar{
	case 1: 
		audio_play_sound(snd_jump1,1, false);
		break;
	case 2: 
		audio_play_sound(snd_jump2,1, false);
		break;
	case 3: 
		audio_play_sound(snd_jump3,1, false);
		break;
	}
    
    // Change sprite to jumping sprite, start animation on frame 0
    if(vsp < 0){
        sprite_index = spr_playerJump;
        image_index = 0;
        image_speed = 1;
    }
   
}

// Limit falling speed
vsp = min(vsp, max_fallspeed);

// --- Shooting / Attack ---
if (key_shoot && can_shoot && !attacking) {
	if(global.shoot_PowerUp == true){
		shot_delay = 20;
		shot_speed = 20;
		shot_count = 2;
	}
    sprite_index = spr_playerAttack;
    image_index = 0;       // start animation
    image_speed = 1;       // normal speed
    attacking = true;      // lock player during attack
    attack_pause = 0;      // last-frame pause counter

    // Spawn projectile
	audio_play_sound(snd_playerBullet,1, false);
    var shoot_x = x + sign(image_xscale) * 170;
    var shoot_y = y - 28;
    instance_create_layer(shoot_x, shoot_y, "Instances", obj_playerBullet);
	
    // Shooting cooldown
	if(shot_count > 1){
		alarm[1] = game_get_speed(gamespeed_fps) * .3;
	}
	
	
    can_shoot = false;
    alarm[0] = shot_delay;
}

// --- Handle attack animation completion ---
if (attacking) {
    // Ensure player uses attack sprite
    sprite_index = spr_playerAttack;

    // Let the sprite play through both frames
    if (image_index <= image_number - 1) {
        image_speed = 1;      // play normal speed
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
    if (vsp < 0) {
        sprite_index = spr_playerJump;
    } else if (vsp > 0) {
		if(!locked_to_elevator){
        sprite_index = spr_playerFall;
		}
    }

    image_speed = 1;
} else if (hsp != 0) {
    // Player is moving on the ground
    sprite_index = spr_playerRun;
    
    // Example random variable usage (if you meant to add it here)
    var randVar = irandom_range(1, 2);
    // You could use randVar to randomize a footstep sound, for example
	if(!audio_is_playing(snd_footsteps1)){
	var randVal = irandom_range(1,2);
	var step = step;
	switch randVal{
		case 1: step = snd_footsteps1;
		break;
		case 2: step = snd_footsteps2;
		break;
	}
	
	//audio_sound_pitch(step, .8);
	audio_play_sound(step,1,false);
	alarm[3] = game_get_speed(gamespeed_fps) * 1;
	}
} else  {
    sprite_index = spr_playerIdle;}
