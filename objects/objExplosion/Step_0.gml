victims_num = collision_circle_list(x,y,blast_radius,objDamageables,true,true,victims_list,false);
if victims_num > 0
{
	for (var i = 0; i < victims_num; ++i;)
    {
        with(victims_list[| i])
		{
			damage_sound = irandom_range(sndDamage1,sndDamage4);
			take_damage(30*other.damage_mult,1,other.blood,objPlayer,damage_sound,objExplosion);
			if self.dead == false && self.hlth <= 0
			{
				self.explosion_death = true;
				other.blood = false;
			}
			if self.hlth <= -100 && self.speed == 0
			{
				gibify(sprExplosionGibs);
				visible = false;
			}
			knockback(1.5,point_direction(x,y,other.x,other.y),6,undefined);
		}
    }
}


if blast_radius >= blast_min_radius && blast_radius < blast_max_radius
{
	blast_radius += blast_amount;
}

if damage_mult > 1
{
	damage_mult -= .25;
}

if instance_exists(objEnemy)
{
	create_noise(10000,objEnemy);
}