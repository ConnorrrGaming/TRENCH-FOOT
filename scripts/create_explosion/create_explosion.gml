function create_explosion(explosion_type,b_amount,b_min_radius,b_max_radius)
{
	var explosion = instance_create_layer(x,y,"Explosion",objExplosion);
	explosion.sprite_index = explosion_type;
	explosion.blast_amount = b_amount;
	explosion.blast_min_radius = b_min_radius;
	explosion.blast_max_radius = b_max_radius;
}