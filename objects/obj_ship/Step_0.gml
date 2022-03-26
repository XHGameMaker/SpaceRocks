/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_left)){
	image_angle += 5;
}


if(keyboard_check(vk_right)){
	image_angle -= 5;
}


if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.05);
	
	// 粒子
	var len = sprite_height * 0.4;
	var _x = x - lengthdir_x(len, image_angle);
	var _y = y - lengthdir_y(len, image_angle);
	with(obj_particles) {
		part_particles_create(partSys, _x, _y, partTypeExhaust, 1);
	}
	
}

if(keyboard_check(vk_down)){
	motion_add(image_angle, -0.05);
}

if(keyboard_check_pressed(vk_space)){
	spawn_bullet_by_ship(self);
	audio_play_sound(snd_zap, 1, false);
}

move_wrap(true, true, sprite_width / 2);
