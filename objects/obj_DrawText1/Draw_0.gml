draw_set_font(fnt_debugText);
draw_set_color(make_color_rgb(31,21,219));
draw_set_alpha(image_alpha); // apply current alpha

draw_text(spawnX, spawnY,                   "Trapped in a dungeon, you search for the exit... ");
draw_text(spawnX, spawnY + line_spacing*2, "       Use the arrow keys to get moving!");
draw_text(spawnX, (spawnY + line_spacing*3+32),  "                  Z - Shoot");

draw_set_alpha(1); // reset alpha
