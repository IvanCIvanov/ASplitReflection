// Show lives at the top of the screen
var draw_x, draw_y = 16;

for (var i = 0; i < lives; i++) {
	draw_x = 16 + 144 * i;
	draw_sprite(spr_heart, 0, draw_x, draw_y);
}