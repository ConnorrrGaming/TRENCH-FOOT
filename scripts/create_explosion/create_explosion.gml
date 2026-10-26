function create_explosion(explosion_type,b_amount,b_min_radius,b_max_radius,explosion_sound,sound_volume)
{
	var explosion = instance_create_layer(x,y,"Explosion",objExplosion);
	explosion.sprite_index = explosion_type;
	explosion.blast_amount = b_amount;
	explosion.blast_min_radius = b_min_radius;
	explosion.blast_max_radius = b_max_radius;
	audio = audio_play_sound(explosion_sound,0,false);
	audio_sound_gain(audio,sound_volume);
	if explosion_sound = sndExplosionClose
	{
		instance_create_depth(x,y,0,objExplosionFlash);
	}
	audio_stop_sound(global.music_playing);
}