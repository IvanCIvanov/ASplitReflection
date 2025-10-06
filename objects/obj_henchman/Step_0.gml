// Stops henchmen from falling off ledges
if (!instance_place(x + sprite_xoffset, y + 1, obj_floor)) {
	hspeed *= -1;
	image_xscale *= -1;
}