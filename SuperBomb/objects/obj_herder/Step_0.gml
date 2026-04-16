
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

	
	
