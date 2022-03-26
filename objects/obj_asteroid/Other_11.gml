/// @description Insert description here
// You can write your code in this editor

// 子弹击中事件

score += 10;
audio_play_sound(snd_die, 1, false);
instance_destroy();

var particle_num = 1;

if(sprite_index == spr_asteroid_huge){
	global.cameraShake = 4;
	particle_num = 8;
	repeat(2) {
		var inst = instance_create_layer(x, y, "Instances", obj_asteroid);
		inst.sprite_index = spr_asteroid_med;
	}
} else if(sprite_index == spr_asteroid_med){
	global.cameraShake = 2;
	particle_num = 5;
	repeat(2) {
		var inst = instance_create_layer(x, y, "Instances", obj_asteroid);
		inst.sprite_index = spr_asteroid_small;
	}
} else {
	particle_num = 3;
	global.cameraShake = 1;
}


var _x = x;
var _y = y;
var _ib = image_blend
with(obj_particles) {
	part_particles_create_color(partSys, _x, _y, partTypeAsteroidDebris, _ib, particle_num);
}
