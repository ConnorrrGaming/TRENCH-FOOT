if distance_to_object(interact_target) <= interact_dist && playing_record != true
{
	show_prompt = true;
	
	if keyboard_check_pressed(ord("E"))
	{
		playing_record = true;
		audio_play_sound(song,0,false);
	}
}
else
{
	show_prompt = false;	
}

if !audio_is_playing(song)
{
	playing_record = false;
}

image_speed = playing_record;