event_inherited();
var blood_path = random_range(-2,2);

speed = .15;
direction = direction + blood_path;
image_angle = direction;


array_push(time_source_list,destroy_head_ts);