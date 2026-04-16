
//switching element mode
	//step left on input
	if keyboard_check_pressed(vk_left) {
		if (element == 0){
			element = 3
		}
		else {
		element -= 1
		}
		show_debug_message(element)
	}

	//step right on input
	if keyboard_check_pressed(vk_right){
		if (element == 3){
			element = 0
		}
		else {
		element += 1
		}
			show_debug_message(element)
	}

	//default image texture
	obj_ui_fire.image_index = 0
	obj_ui_water.image_index = 0
	obj_ui_life.image_index = 0
	obj_ui_earth.image_index = 0

	//highlight image texture
	switch (element) {
		case 0:
			obj_ui_fire.image_index = 1
			break
		case 1:
			obj_ui_water.image_index = 1
			break
		case 2:
			obj_ui_life.image_index = 1
			break
		case 3:
			obj_ui_earth.image_index = 1
			break

	}


if keyboard_check_pressed(vk_space) && draw_cd == false {
	instance_create_layer(mouse_x, mouse_y, "Instances2", obj_drawpoint_1)
	draw += 1
	alarm_set(0, 3)
	//with instance_nearest(mouse_x, mouse_y, obj_drawpoint_1) {	
	//	drawx = x;
	//	drawy = y;
	//}

	draw_cd = true
	alarm_set(1, 30) //cooldown
		
		
		
	
}

instancer = draw