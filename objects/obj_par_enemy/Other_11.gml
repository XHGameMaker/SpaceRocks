/// @description 受伤

HP -= 1;
if(HP <= 0 ){
	instance_destroy();
} else if(object_index == obj_brute) {
	sprite_index = HP - 1;
}