/// @受伤

if(other.id == creator) exit;
show_debug_message("------");
show_debug_message(other);
show_debug_message(creator);
instance_destroy();

if(faction == other.faction) exit;

with(other) event_perform(ev_other, ev_user1);
