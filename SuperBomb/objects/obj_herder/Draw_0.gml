
draw_self()
draw_set_font(fnt_score)
draw_text_color(1100, 40, "Score:"+string(global.score), c_white, c_white, c_white, c_white, 1)


/*
draw_set_color(c_fuchsia)
	if drawing = true {
		draw_line_width(obj_drawpoint_1.x, obj_drawpoint_1.y, obj_crosshair.x, obj_crosshair.y, 20) 
	}
		
	//if draw = 1 {
	//	draw_line_width(drawx, drawy, 
	//	instance_nearest(mouse_x, mouse_y, obj_drawpoint_1).x, instance_nearest(mouse_x, mouse_y, obj_drawpoint_1).y, 
	//	20) 	
	//}
	
	//if draw = 2 = true {
	//	draw_line_width(drawx, drawy, 
	//	instance_nearest(mouse_x, mouse_y, obj_drawpoint_1).x, instance_nearest(mouse_x, mouse_y, obj_drawpoint_1).y, 
	//	20) 	
	//}
	
	if draw > 0 {
	draw_line_width_color(instance_find(obj_drawpoint_1, (instancer - 1)).x,
						instance_find(obj_drawpoint_1, (instancer -1)).y,
						instance_find(obj_drawpoint_1, instancer).x,
						instance_find(obj_drawpoint_1, instancer).y,
						20, c_aqua, c_gray)
	}