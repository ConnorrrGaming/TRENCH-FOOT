/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


var get_value = uls_get_light_alpha(self);
get_value += (0 - get_value)*0.05;
uls_set_light_alpha(self, get_value);

if get_value <= 0 then instance_destroy(self);

show_debug_message("Explosion Alpha: "+string(get_value));