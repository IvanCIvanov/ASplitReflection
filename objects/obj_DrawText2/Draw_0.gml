draw_set_font(fnt_debugText);
draw_set_color(make_color_rgb(31,21,219));
draw_set_alpha(image_alpha); // apply current alpha

draw_text(spawnX, spawnY,                   "           Collect all the shards");
draw_text(spawnX, spawnY + line_spacing*2, "            of a mystical mirror");
draw_text(spawnX, spawnY + line_spacing*3+32,"             to teleport away!");
draw_text(spawnX, spawnY + line_spacing*5+64,  "Explore to unlock platforms to reach the mirror");

draw_set_alpha(1); // reset alpha


