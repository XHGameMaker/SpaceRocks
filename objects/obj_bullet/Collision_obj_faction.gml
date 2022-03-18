/// @受伤

if(other == creator) exit;

instance_destroy();

if(faction == other.faction) exit;

with(other) event_perform(ev_other, ev_user1);
