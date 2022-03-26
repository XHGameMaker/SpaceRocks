/// @description Insert description here
// You can write your code in this editor

with(other){
	var power_index = image_index;
	instance_destroy();
}


switch(power_index) {
	case powerups.invincible:
		invincible = true;
		alarm[0] = 8 * room_speed;
		break;
			
	default:
		gun = power_index;
		alarm[1] = 5 * room_speed
		break;
}