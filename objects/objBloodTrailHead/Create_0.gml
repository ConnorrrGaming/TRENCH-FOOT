alarm[0] = .1 * room_speed;
alarm[1] = 3 * room_speed;
image_speed = 0;
frame_number = image_number;
image_blend = blood_colour_randomise(.5,.5);
time_source_list = [];

var destroy_head = function()
{
	instance_destroy(self);
	destroy_time_source_list(time_source_list);
}

destroy_head_ts = time_source_create(time_source_global,10,time_source_units_seconds,destroy_head,[],1,time_source_expire_after);
time_source_start(destroy_head_ts);

blood_image_index = 0;