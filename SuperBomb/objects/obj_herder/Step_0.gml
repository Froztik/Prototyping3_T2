
//if keyboard_check(vk_left or vk_right){
//	started = false;}

if keyboard_check_pressed(vk_left) {
	if (element == 0){
		element = 3
	}
	else {
	element -= 1
	}
	show_debug_message(element)
}
	
if keyboard_check_pressed(vk_right){
	if (element == 3){
		element = 0
	}
	else {
	element += 1
	}
		show_debug_message(element)
}

	obj_ui_fire.image_index = 0
	obj_ui_water.image_index = 0
	obj_ui_life.image_index = 0
	obj_ui_earth.image_index = 0
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

//if element == 0 {
//obj_ui_ .image_index = 1
//}
//if element == 0 {
//obj_ui_ .image_index = 1
//}
//if element == 0 {
//obj_ui_ .image_index = 1
//}
//if element == 0 {
//obj_ui_ .image_index = 1
//}
	


//if element == "f" {
//if keyboard_check_pressed(vk_left){
//		element = "e"}	
//	if keyboard_check_pressed(vk_right){
//		element = "w"}
//}

//if element == "w" {
//if keyboard_check_pressed(vk_left){
//		element = "f"}	
//	if keyboard_check_pressed(vk_right){
//		element = "l"}
//}
//if element == "l" {
//if keyboard_check_pressed(vk_left){
//		element = "w"}	
//	if keyboard_check_pressed(vk_right){
//		element = "e"}
//}
//if element == "e" {
//if keyboard_check_pressed(vk_left){
//		element = "l"}	
//	if keyboard_check_pressed(vk_right){
//		element = "f"}
//}

/*
if element_on = true and started = false { //moving between elements
if _f = true {  //moving from fire
	if keyboard_check(vk_left){
		_f = false
		_e = true }	
	if keyboard_check(vk_right){
		_f = false
		_w = true}
}		

if _w = true {  //moving from water
	if keyboard_check(vk_left){
		_w = false
		_f = true }	
	if keyboard_check(vk_right){
		_w = false
		_l = true}
}		

if _l = true {  //moving from life
	if keyboard_check(vk_left){
		_l = false
		_w = true }	
	if keyboard_check(vk_right){
		_l = false
		_e = true}
}		

if _e = true {  //moving from earth
	if keyboard_check(vk_left){
		_e = false
		_l = true }	
	if keyboard_check(vk_right){
		_e = false
		_f = true}
}		
	
}
	
	
	
