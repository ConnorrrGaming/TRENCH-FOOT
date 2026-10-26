function head_explode(head_giblets,min_brain_speed,max_brain_speed,brain_amount,brain_direction,brain_min_spread,brain_max_spread,head_giblet_enable)
{
	var giblet_amount = sprite_get_number(head_giblets);
	
	for (var i = 0; i < brain_amount-1; i++)
	{
		var brainage = instance_create_layer(x,y,"Brains",objBrainSpatter);
		var brainage_spread = random_range(brain_min_spread,brain_max_spread);
		brainage.speed = irandom_range(min_brain_speed,max_brain_speed);
		brainage.direction = (brain_direction + brainage_spread);
		brainage.image_angle = brainage.direction;
	}
	
	if head_giblet_enable == true
	{
		for(var i = 0; i < giblet_amount; i++)
		{
			var head_gib_spread = random_range(brain_min_spread,brain_max_spread);
			limb_decapitation(head_giblets,false,false,true,i,brainage.speed,(point_direction(x,y,other.x,other.y)+head_gib_spread)-180,undefined,true);
		}
		audio_play_sound(sndHeadExplode,0,false);
	}
	
	
}