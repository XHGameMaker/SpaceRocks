/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_ship)) {
	global.cameraX = target.x - global.cameraWidth / 2;
	global.cameraY = target.y - global.cameraHeight / 2;
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);
}

if(global.cameraShake > 0){
	global.cameraX += random_range(-global.cameraShake, global.cameraShake);
	global.cameraY += random_range(-global.cameraShake, global.cameraShake);
	global.cameraShake -= 0.2;
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

layer_x("background_1", global.cameraX * 0.98);
layer_y("background_1", global.cameraY * 0.98);

layer_x("background_2", global.cameraX * 0.96);
layer_y("background_2", global.cameraY * 0.96);

layer_x("background_3", global.cameraX * 0.94);
layer_y("background_3", global.cameraY * 0.94);

layer_x("background_4", global.cameraX * 0.91);
layer_y("background_4", global.cameraY * 0.91);


