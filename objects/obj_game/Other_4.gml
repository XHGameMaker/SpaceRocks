/// @description Insert description here
// You can write your code in this editor

if(room == rm_game){
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	audio_play_sound(msc_song, 2, true);
	
	spawn_off_camera(obj_asteroid, 30);
	
	spawn_off_camera(obj_raider, 6);
	spawn_off_camera(obj_brute, 3);
	spawn_off_camera(obj_hunter, 2);
	
	spawn_off_camera(obj_powerup, 3);

	//repeat(6) {
	//	var xx = choose(
	//		irandom_range(0, room_width * 0.3),
	//		irandom_range(room_width * 0.7, room_width)
	//	);
	//	var yy = choose(
	//		irandom_range(0, room_height * 0.3),
	//		irandom_range(room_height * 0.7, room_height)
	//	);
	//	instance_create_layer(xx, yy, "Instances", obj_asteroid);
	//}
	alarm[0] = 60;
}