/// @description Insert description here
// You can write your code in this editor

draw_self();

if(gun>=0) {
	var alpha = min(1, alarm[1] / 60);
	draw_sprite_ext(spr_ship_powerups_strip6, gun, x, y, 
		image_xscale, image_yscale, image_angle, image_blend, alpha);
}

if(invincible) {
	var alpha = min(1, alarm[0] / 60);
	draw_sprite_ext(spr_ship_powerups_strip6, powerups.invincible, x, y, 
		image_xscale, image_yscale, image_angle, image_blend, alpha);
}