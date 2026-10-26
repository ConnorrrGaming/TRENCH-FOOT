if current_option >= menu_bound-1
{
	current_option = 0;
}
else
{
	current_option++;
}

audio_play_sound(sndMessage,0,false);