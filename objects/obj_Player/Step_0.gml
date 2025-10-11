
// if the player collides with an enemy or trap
if (state == "dying") {
    // play the shatter animation from collision event, 
	// then restart the game or room. 
    if (image_index >= image_number - 1) {
        if (global.lives > 0) {
            room_restart();
        } else {
            game_restart();
        }
    }
    exit;// exits code after restart of room or game
}


event_inherited();


// Apply velocity
x += hsp;
y += vsp;




// Attack Code
if(keyboard_check_pressed(ord("Z"))){
	if(can_shoot){
	var bullet =instance_create_layer(x,y,"Instances", obj_playerBullet);
	bullet.hspeed = shot_speed * sign(image_xscale);
	can_shoot = false;
	alarm[0] =  shot_delay;
	}
}