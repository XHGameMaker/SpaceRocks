/// @description Insert description here
// You can write your code in this editor

lives -= 1;

with(obj_game) {
	alarm[1] = room_speed;
}

destroy_with_debris(self, 10);
