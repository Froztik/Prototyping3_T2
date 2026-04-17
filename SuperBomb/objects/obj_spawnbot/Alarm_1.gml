instance_create_layer(x,y,"Instances2",obj_bomb)
with (instance_nearest(x,y,obj_bomb)){
	bombtype = choose(1, 2, 3, 4)
	
	if bombtype = 1 {sprite_index = spr_bomb_1}
	if bombtype = 2 {sprite_index = spr_bomb_2}
	if bombtype = 3 {sprite_index = spr_bomb_3}
	if bombtype = 4 {sprite_index = spr_bomb_4}
	
	direction = choose(90, 45, 67.5, 112.5, 135);
}
alarm_set(1,180)