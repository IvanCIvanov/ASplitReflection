image_xscale = -2;	// increase boss size, also faces player
image_yscale = 2;

attack_interval = 180;	// how often the boss does an attack
attack_radius = 600;	// if the player is within this radius, next attack will be a swipe

idle_imgspeed = 1;		// speed of idle animation
attack_imgspeed = 1;	// speed of attack animation

target_x = 0;			// Player's x and y position
target_y = 0;

is_active = false;	// becomes active once player walks through trigger
can_attack = false;	// determines whether the boss can attack or not