if room != rmAreaTransition
{
	audio_stop_all();
	audio_sound_gain(global.ambiance[0],0);
	if global.safe_room == false then audio_sound_gain(global.ambiance[0],1,fade_time);
}