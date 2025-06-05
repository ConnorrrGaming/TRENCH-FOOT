if dead == false 
{
	damage_sound = irandom_range(sndDamage1,sndDamage4);
	var damage = objPlayer.damage_per_shot;
	damage_inflicted_mult = other.damage_mult;
	//destroy_bullet(other,false);
	take_damage(damage,damage_inflicted_mult/2,true,objPlayer,damage_sound,objKnifeHitbox);
	audio_play_sound(sndKnifeSlashFlesh,10,false);
}