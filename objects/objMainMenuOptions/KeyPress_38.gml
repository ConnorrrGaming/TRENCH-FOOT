if current_option = 0
{
	current_option = menu_bound-1
}
else
{
	current_option--;
}

audio_play_sound(sndMessage,0,false);