if (fade_started && image_alpha < 1) {
    image_alpha += fade;
    if (image_alpha > 1) image_alpha = 1; // clamp max alpha
}

if (!fade_started && image_alpha > 0){
	image_alpha -= fade;
	if (image_alpha < 0) image_alpha = 0;
}
