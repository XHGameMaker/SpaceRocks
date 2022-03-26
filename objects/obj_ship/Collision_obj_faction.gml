/// @description Insert description here
// You can write your code in this editor

if(faction == other.faction) exit;

if(invincible) {
	with(other){
		event_perform(ev_other, ev_user1);
	}
	exit;
}

event_perform(ev_other, ev_user1);
