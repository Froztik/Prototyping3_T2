instance_create_layer(x,y,"Instances2",obj_bomb)
with (instance_nearest(x,y,obj_bomb)){
    bombtype = choose(0, 1, 2, 3)

    if (bombtype = 0) {instance_change(obj_bomb_e,true)}
    if (bombtype = 1) {instance_change(obj_bomb_f,true)}
    if (bombtype = 2) {instance_change(obj_bomb_l,true)}
    if (bombtype = 3) {instance_change(obj_bomb_w,true)}

    direction = choose(0, 22,5 , 45, -22.5, -45);
}
alarm_set(1,180);