if sprite_index == sprEnemyHead
{
	head_explode(sprHeadshotGibs,5,10,irandom_range(15,25),irandom_range(0,359),-360,360,true);
	instance_destroy(self);
}