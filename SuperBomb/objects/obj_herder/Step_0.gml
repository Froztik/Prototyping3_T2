if (array_length(obj_gamepads.gamepads) > 0) {
	

//switching element mode
	//step left on input
	if gamepad_button_check_pressed(0, gp_shoulderl) {
		if (element == 0){
			element = 3
		}
		else {
		element -= 1
		}
		show_debug_message(element)
	}

	//step right on input
	if gamepad_button_check_pressed(0, gp_shoulderr){
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




if gamepad_button_check_pressed(0, gp_face1) && draw_cd == false {
	_x = round(obj_crosshair.x / 64) * 64;
	_y = round(obj_crosshair.y / 64) * 64;
	
	validPlacement = 1;
	
	with (obj_drawpoint_1)
	{
		if (!(x == other._x or y == other._y))
		{
			other.validPlacement -= 1/instance_number(obj_drawpoint_1);
		}
	}
	
	if (validPlacement >= 0.5) {
		instance_create_layer(_x, _y, "Instances2", obj_drawpoint_1);
		
		if (instance_number(obj_drawpoint_1) == 4) {
			
			var _fencetop = instance_nearest(0, 0, obj_drawpoint_1)  // Hitta den övre vänstraste
			var _fencebot = instance_nearest(room_width, room_height, obj_drawpoint_1)// Hitta den undre högraste
			
			var _goobers = ds_list_create();
			
			switch (element) {
				case 0: collision_rectangle_list(_fencetop.bbox_left, _fencetop.bbox_top, _fencebot.bbox_right, _fencebot.bbox_bottom, obj_bomb_f, true, true, _goobers, false); break;
				case 1: collision_rectangle_list(_fencetop.bbox_left, _fencetop.bbox_top, _fencebot.bbox_right, _fencebot.bbox_bottom, obj_bomb_w, true, true, _goobers, false); break;
				case 2: collision_rectangle_list(_fencetop.bbox_left, _fencetop.bbox_top, _fencebot.bbox_right, _fencebot.bbox_bottom, obj_bomb_l, true, true, _goobers, false); break;
				case 3: collision_rectangle_list(_fencetop.bbox_left, _fencetop.bbox_top, _fencebot.bbox_right, _fencebot.bbox_bottom, obj_bomb_e, true, true, _goobers, false); break;
			}
			
			var _antalGoobers = ds_list_size(_goobers);
			
			if  (_antalGoobers > 0)
			{
				for (var i = 0; i < _antalGoobers; i++)
				{
					global.score += 10
			
					instance_destroy(ds_list_find_value(_goobers, i))
					
				}
			}
			// Make fences
			//with (obj_drawpoint_1) {
			//	// To all connecting points
			//	with (obj_drawpoint_1) {
			//		if (x == other.x or y == other.y)
			//		{
			//			// Place fences between the points
			//			for (var i = 0; i < point_distance(other.x, other.y, x, y) / 64; i++)
			//			{
			//				var _xx = x + (sign(other.x - x) * i * 64),
			//					_yy = y + (sign(other.y - y) * i * 64);
							
			//				if (!instance_place(_xx, _yy, obj_fence)) // unless the other point already placed a fence there
			//				{
			//					instance_create_layer(_xx, _yy, layer, obj_fence);
			//				}
			//			}
			//		}
			//	}
			//}
			// Remove drawpoints
			alarm_set(2, 20);
			
	
			
		}
	}
	draw_cd = true
	alarm_set(1, 30) //cooldown
	
}

instancer = draw


}