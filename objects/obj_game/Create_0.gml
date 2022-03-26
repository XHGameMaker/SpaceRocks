/// @description Insert description here
// You can write your code in this editor

score = 0;
lives = 3;

draw_set_font(f_my);
randomize();

enum factions {
	neutral,
	ally,
	enemy,
}

enum powerups {
	two_bullets,
	three_bullets,
	four_bullets,
	star_bullets,
	laser_bullets,
	invincible,
}