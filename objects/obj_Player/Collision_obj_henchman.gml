/// Collision Event: obj_Player with obj_henchman


// TODO audio_play_sound(snd_playerDeath, 1, false); 


if (state != "dying") {
    state = "dying";
    global.lives -= 1;
    sprite_index = spr_playerShatter;
    image_index = 0;
    image_speed = 1;
    hsp = 0;
    vsp = 0;
}
