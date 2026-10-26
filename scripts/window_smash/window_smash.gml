function window_smash()
{
	for (var i = 0; i < 20 * self.image_yscale; i++)
	{
		var dir_diff = irandom_range(-50,50);
		var spd_diff = irandom_range(-8,-2);
		create_glass_shard((other.speed/10)-spd_diff,(other.direction)+dir_diff,"Blood");
	}
	audio_play_sound(sndWindowBreak,0,false);
	sprite_index = sprWindowBroken;
	create_noise(150,objEnemy);
}