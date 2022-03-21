// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function spawn_bullet_by_ship(ship){
	var inst = instance_create_layer(ship.x, ship.y, "Instances", obj_bullet);
	with(inst){
		direction = ship.image_angle;
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