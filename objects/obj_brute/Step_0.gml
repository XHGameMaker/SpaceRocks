/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_ship)) exit;

if(point_distance(x, y, obj_ship.x, obj_ship.y) < 250) {
	// 转向玩家
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	speed += 0.01;

	
} else {
	speed = lerp(speed, originalSpeed, 0.1);
}