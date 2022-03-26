/// @description Insert description here
// You can write your code in this editor


particleCounter++;
if (particleCounter > 4) {
	particleCounter = 0;
	var len = sprite_height * 0.4;
	var _x = x - lengthdir_x(len, image_angle);
	var _y = y - lengthdir_y(len, image_angle);
	with(obj_particles) {
		part_particles_create(partSys, _x, _y, partTypeEnemyExhaust, 1);
	}
}