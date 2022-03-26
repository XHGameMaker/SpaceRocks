// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function bullet_by_offset_angle(ship, angle, dir_offset=0){
	var _sep = 12;
	var _dirction = ship.image_angle;
	var _x = ship.x + lengthdir_x(_sep, _dirction + angle);
	var _y = ship.y + lengthdir_y(_sep, _dirction + angle);
	
	var inst = instance_create_layer(_x, _y, "Instances", obj_bullet);
	with(inst){
		direction = ship.image_angle + dir_offset;
		speed = ship.bullet_speed;
		faction = ship.faction;
		creator = ship.id;
		switch(faction) {
			case factions.ally:
				image_blend = c_aqua;
				break;
				
			case factions.enemy:
				image_blend = c_red;
				break
		}
	}

}


function spawn_bullet_by_ship(ship){
	if variable_instance_exists(ship, "gun") {
		var gun_type = ship.gun;
	} else {
		var gun_type = -1;
	}
	
	var n = 1;
	var start_angel = 0;
	var step_angle = 90;
	var dir_offset = 0;
	
	switch(gun_type) {
		case powerups.two_bullets:
			n = 2;
			start_angel = -90;
			step_angle = 180;
			break;
			
		case powerups.three_bullets:
			n = 3;
			start_angel = -90;
			break;
			
		case powerups.four_bullets:
			n = 4;
			dir_offset = 90
			break;
		
		case powerups.star_bullets:
			n = 8;
			step_angle = 45;
			dir_offset = 45
			break;
			
		case powerups.laser_bullets:
			n = 0;
			break;
		
	}
	
	for(var i = 0; i < n ;i++){
		var _angle = start_angel + i * step_angle;
		bullet_by_offset_angle(ship, _angle, dir_offset * i);
	}
	
}

function destroy_with_debris(obj, repeate_num) {
	audio_play_sound(snd_die, 1, false);
	repeat(repeate_num) {
		instance_create_layer(obj.x, obj.y, "Instances", obj_debris);
	}
}