/// @description Insert description here
// You can write your code in this editor

partSys = part_system_create();

// Exhaust
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust, spr_exhaust, false, false, false);
part_type_size(partTypeExhaust, .4, .4, 0.05, 0);
part_type_color3(partTypeExhaust, c_white, c_fuchsia, c_purple);
part_type_alpha3(partTypeExhaust, 1, 1, 0);
part_type_life(partTypeExhaust, 20, 20);


// EnemyExhaust
partTypeEnemyExhaust = part_type_create();
part_type_sprite(partTypeEnemyExhaust, spr_exhaust, false, false, false);
part_type_size(partTypeEnemyExhaust, .4, .4, 0.05, 0);
part_type_color3(partTypeEnemyExhaust, c_yellow, c_orange, c_red);
part_type_alpha3(partTypeEnemyExhaust, 1, 1, 0);
part_type_life(partTypeEnemyExhaust, 20, 20);