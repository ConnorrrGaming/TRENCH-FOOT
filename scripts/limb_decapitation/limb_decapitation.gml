function limb_decapitation(limb_type,kickable_limb,limb_animated,limb_rotatable,starting_image,limb_speed,limb_direction,death_sprite,limb_bleeding)
{
	limb = create_and_move_object(x,y,"Legs",objGib,limb_type,starting_image,limb_speed,limb_direction)
	limb.animated = limb_animated;
	limb.rotatable = limb_rotatable;
	limb.kickable = kickable_limb;
	limb.bleeding = limb_bleeding;
	limb.non_interact = !limb.kickable;

	if death_sprite != undefined then sprite_index = death_sprite;
	return limb;
}