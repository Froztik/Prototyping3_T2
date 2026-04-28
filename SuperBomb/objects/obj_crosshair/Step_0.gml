
if global.keyboard = true { //**KEYBOARD MOVEMENT**
	
	if keyboard_check_pressed(vk_up) {
		vspeed = -4
	} else if keyboard_check_released(vk_up) {
		vspeed = 0
	} //Keyboard movement up
	if keyboard_check_pressed(vk_down) {
		vspeed = 4
	} else if keyboard_check_released(vk_down) {
		vspeed = 0
	} //Keyboard movement down
	if keyboard_check_pressed(vk_left) {
		hspeed = -4
	} else if keyboard_check_released(vk_left) {
		hspeed = 0
	} //Keyboard movement left
	if keyboard_check_pressed(vk_right) {
		hspeed = 4
	} else if keyboard_check_released(vk_right) {
		hspeed = 0
	} //Keyboard movement right
} //**KEYBOARD MOVEMENT**


if (array_length(obj_gamepads.gamepads) > 0) {
	
	
	
h_speed = gamepad_axis_value(obj_gamepads.gamepads[0], gp_axislh) * 10
v_speed = gamepad_axis_value(obj_gamepads.gamepads[0], gp_axislv) * 10
hspeed = h_speed
vspeed = v_speed
//movement


}

switch (obj_herder.element) {
	case 0:
		sprite_index = spr_crosshair_fire
			break
		case 1:
		sprite_index = spr_crosshair_water
			break
		case 2:
		sprite_index = spr_crosshair_life
			break
		case 3:
		sprite_index = spr_crosshair_earth
			break
}

if instance_number(obj_drawpoint_1) = 1 {
if (gamepad_button_check_pressed(0, gp_face1) or keyboard_check_pressed(vk_space)) && obj_herder.draw_cd == false {
	x = instance_nearest(x, y, obj_drawpoint_1).x}
	hspeed = 0

	if crossArrow_1 = true {
		instance_create_layer(obj_crosshair.x, obj_crosshair.y, "instance_herder_ui", obj_CrossDir_ver)
		crossArrow_1 = false
	}
}
if instance_number(obj_drawpoint_1) = 2 {
	if (gamepad_button_check_pressed(0, gp_face1) or keyboard_check_pressed(vk_space)) && obj_herder.draw_cd == false {
	y = instance_nearest(x, y, obj_drawpoint_1).y}
	vspeed = 0
	
	instance_destroy(obj_CrossDir_ver)
	if crossArrow_2 = true {
		instance_create_layer(obj_crosshair.x, obj_crosshair.y, "instance_herder_ui", obj_CrossDir_hor)
		crossArrow_2 = false
	}
}
if instance_number(obj_drawpoint_1) = 3 {
	if (gamepad_button_check_pressed(0, gp_face1) or keyboard_check_pressed(vk_space)) && obj_herder.draw_cd == false {
	x = instance_nearest(x, y, obj_drawpoint_1).x}
	hspeed = 0
	
	instance_destroy(obj_CrossDir_hor)
	if crossArrow_3 = true {
		instance_create_layer(obj_crosshair.x, obj_crosshair.y, "instance_herder_ui", obj_CrossDir_ver)
		crossArrow_3 = false
	}
}

if instance_number(obj_drawpoint_1) >= 4 {
	instance_destroy(obj_CrossDir_ver)
	instance_destroy(obj_CrossDir_hor)
	crossArrow_1 = true
	crossArrow_2 = true
	crossArrow_3 = true
}
	//if vspeed > 0 or vspeed < 0 {hspeed = 0}
	//if hspeed > 0 or hspeed < 0 {vspeed = 0}