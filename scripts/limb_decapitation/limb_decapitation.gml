function limb_decapitation(limb_type,kickable_limb,limb_animated,limb_rotatable,starting_image,limb_speed,limb_direction,death_sprite)
{
	limb = instance_create_layer(x,y,"Brains",objGib);
	limb.animated = limb_animated;
	limb.rotatable = limb_rotatable;
	limb.kickable = kickable_limb;
	limb.sprite_index = limb_type;
	limb.image_index = starting_image;
	limb.speed = limb_speed;
	limb.direction = limb_direction;
	sprite_index = death_sprite;
	return limb;
}