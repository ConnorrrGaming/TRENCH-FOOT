if global.fade.image_alpha >= 1 && global.fade.fade_type == true && start_room_trans = false
{
	global.fade.image_alpha = 1;
	alarm[1] = room_trans_time * room_speed;
	start_room_trans = true;
}