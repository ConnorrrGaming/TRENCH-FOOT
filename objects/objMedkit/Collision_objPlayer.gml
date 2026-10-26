with(other)
{
	medkits++;
}
audio_play_sound(pickup_sound,0,false);
send_to_hud_queue("You have picked up a Medkit");
instance_destroy(self);
