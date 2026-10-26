function create_glass_shard(shard_speed,shard_direction,shard_layer)
{
	var shard = instance_create_layer(x,y,shard_layer,objGlassShard);
	shard.speed = shard_speed;
	shard.direction = shard_direction;
	shard.attacker = self.attacker;
}