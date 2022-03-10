// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_off_camera(obj, num){
	var pad = 64, xx, yy;
	
	if(global.cameraX <= pad){
		xx = irandom_range(global.cameraX + global.cameraWidth, room_width);
	} else {
		xx = choose(
			irandom_range(0, global.cameraX - pad),
			irandom_range(global.cameraX + global.cameraWidth, room_width),
		);
	}
	
	if(global.cameraY <= pad){
		yy = irandom_range(global.cameraY + global.cameraHeight, room_height);
	} else {
		yy = choose(
			irandom_range(0, global.cameraY - pad),
			irandom_range(global.cameraY + global.cameraHeight, room_height)
		);
	}
	
	instance_create_layer(xx, yy, "Instances", obj);

};