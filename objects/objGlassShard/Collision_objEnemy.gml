if attacker == objPlayer
{
	with(other)
	{
		if dead == false 
		{
			damage_sound = irandom_range(sndDamage1,sndDamage4);
			damage_inflicted_mult = 1;
			take_damage(other.damage,damage_inflicted_mult/2,true,other.attacker,damage_sound,objGlassShard);
			audio_play_sound(sndKnifeSlashFlesh,10,false);
			other.speed = 0;
		}
	}
}