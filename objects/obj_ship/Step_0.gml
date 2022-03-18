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
}

if(keyboard_check(vk_down)){
	motion_add(image_angle, -0.05);
}

if(keyboard_check_pressed(vk_space)){
	//spawn_bullet(x, y, image_angle, 6, faction, id);
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	var _create = id;
	var _faction = faction;
	with(inst){
		direction = image_angle;
		speed = 6;
		faction = _faction;
		creator = _create;
		switch(faction) {
			case factions.ally:
				image_blend = c_aqua;
				break;
				
			case factions.enemy:
				image_blend = c_red;
				break
		}
	}
	audio_play_sound(snd_zap, 1, false);
}

move_wrap(true, true, sprite_width / 2);
