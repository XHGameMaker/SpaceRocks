// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function spawn_bullet(_x, _y, _direction, _speed, _faction, _create){
	var inst = instance_create_layer(_x, _y, "Instances", obj_bullet);
	with(inst){
		direction = _direction;
		speed = _speed;
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
}