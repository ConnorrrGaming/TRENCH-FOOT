damage_sound = irandom_range(sndDamage1,sndDamage4);
var damage = (other.shooter.damage_per_shot) / 2;
damage_inflicted_mult = other.damage_mult;
destroy_bullet(other,false);
take_damage(damage,damage_inflicted_mult/2,true,objEnemy,damage_sound,objEnemyBullet);