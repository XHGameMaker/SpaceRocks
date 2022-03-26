/// @description Insert description here
// You can write your code in this editor

if(room != rm_game) {
	exit;
}

//if(choose(true, false)){
//	var xx = choose(0, room_width);
//	var yy = irandom_range(0, room_height);
//} else {
//	var xx = irandom_range(0, room_width);
//	var yy = choose(0, room_height);
//}

//instance_create_layer(xx, yy, "Instances", obj_asteroid);
//alarm[0] = 4 * room_speed;


spawn_off_camera(obj_asteroid, 1);
// spawn_off_camera(obj_powerup, 1);
alarm[0] = 1 * room_speed;

