//if(bombUp = false){
//	with (instance_nearest(mouse_x,mouse_y,obj_bomb)){
//		bombUp = true;
//	}
//}
if(!instance_exists(obj_bombUp)){
	with(instance_nearest(mouse_x,mouse_y, obj_bomb)){
		instance_change(obj_bombUp,true);
	}
}