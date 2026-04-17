instance_create_layer(x,y,"Instances2",obj_bomb)
with(instance_nearest(x,y,obj_bomb)){
	direction = choose(-90, -45, -67.5, -112.5, -135);
}
alarm_set(1,180)