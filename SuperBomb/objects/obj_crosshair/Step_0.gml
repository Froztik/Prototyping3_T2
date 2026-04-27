
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

if instance_exists(obj_drawpoint_1) {
	
}