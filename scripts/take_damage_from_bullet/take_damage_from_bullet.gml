function take_damage_from_bullet(attacker,delete_bullet)
{
	damage_sound = irandom_range(sndDamage1,sndDamage4);
	var damage = other.bullet_damage;
	if delete_bullet == true then instance_destroy(other);
	damage_inflicted_mult = other.damage_mult;
	take_damage(damage,damage_inflicted_mult/2,true,attacker,damage_sound,objBullet);
}