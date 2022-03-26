/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(creator)) {
	instance_destroy();
	exit;
}


var length = 250;
var _x = x + lengthdir_x(length, direction);
var _y = y + lengthdir_y(length, direction);

// 绘制线条
draw_line_width_color(x, y, _x, _y,
	2, creator.image_blend,creator.image_blend
);

// 绘制线条碰撞
var inst = collision_line(x, y, _x, _y, obj_faction, false, false);
if(inst) {
	if(inst.faction != faction){
		with(inst){
			event_perform(ev_other, ev_user1);
		}
	}
}