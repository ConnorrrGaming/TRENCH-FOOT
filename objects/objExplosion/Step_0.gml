victims_num = collision_circle_list(x,y,blast_radius,objDamageables,false,true,victims_list,true);
if victims_num > 0
{
	for (var i = 0; i < victims_num; ++i;)
    {
        with(victims_list[| i])
		{
			if collision_line(x,y,other.x,other.y,objSolidCollision,false,false) == noone
			{
				var kb_speed_amount = 3;
				var kb_speed_cap = (kb_speed_amount * 2);
				damage_sound = irandom_range(sndDamage1,sndDamage4);
				take_damage(11*other.damage_mult,1,other.blood,other.attacker,damage_sound,objExplosion);
				if self.dead == false && self.hlth <= 0
				{
					self.explosion_death = true;
					other.blood = false;
					if distance_to_object(other) < 1 && gibbed != true
					{
						gibify(sprExplosionGibs);
						gibbed = true;
					}
				}

				if self.dead == true && self.gibbed == true
				{
					sprite_index = sprNPCDeadExplosion;
					blood_spatter(self.direction,irandom_range(0,image_number),0,sprBloodSplatterSmall,1,true);
				}
				if visible == true && distance_to_object(other) < other.blast_radius
				{
					knockback(kb_speed_amount,point_direction(x,y,other.x,other.y),kb_speed_cap,undefined);
				}
				if speed >= kb_speed_cap && gibbed == true
				{
					if place_meeting(x,y,objSolidCollision)
					{
						head_explode(sprGore,speed/2,speed,20,direction,-180,180,false);
						visible = false;
						self.speed = 0;
					}
				}
			}
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