if (instance_exists(obj_Player)) {
	draw_set_color(c_red);
	
	var x1 = obj_Player.bbox_left;
	var y1 = obj_Player.bbox_top;
	var x2 = obj_Player.bbox_right;
	var y2 = obj_Player.bbox_bottom;
	draw_rectangle(x1, y1, x2, y2, true);
}