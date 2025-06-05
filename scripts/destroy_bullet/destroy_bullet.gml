function destroy_bullet(target,solid_impact)
{	
	if target != objSniperBullet || target != objEnemySniperBullet
	{
		show_debug_message("Direction: "+string(direction));
		if solid_impact == true
		{
			var impact = instance_create_layer(x,y,"Bullets",objBulletImpact);
			impact.direction = target.direction;
			impact.image_angle = target.direction;
			impact.image_speed = random_range(0.7,1.5);
		}
	
		show_debug_message("Bullet Damage Mult: "+string(target.damage_mult));
	
		instance_destroy(target);
		//dscreate_explosion(sprGrenadeExplosion,10,0,80); 
	}
}