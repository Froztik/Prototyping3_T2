//if(bombUp = false){
//	with (instance_nearest(mouse_x,mouse_y,obj_bomb)){
//		bombUp = true;
//	}
//}
if(!instance_exists(obj_bombup_w)){
	with(instance_nearest(mouse_x,mouse_y, obj_bomb)){
		instance_change(obj_bombup_w,true);
	}
}