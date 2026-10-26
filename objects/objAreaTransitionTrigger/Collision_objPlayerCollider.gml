if transition_start == false
{
	screen_fade(true,.01,0,c_black);
	other.area_trans = true;
	audio_sound_gain(global.ambiance[0],0,objMusicManager.fade_time/2);
	transition_start = true;
	global.next_area = next_area;
}