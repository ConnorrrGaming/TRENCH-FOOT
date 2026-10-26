if slashed == false
{
	audio_play_sound(sndSqueak,0,false);
	image_index++;
	limb_decapitation(sprPomniPlushHead,true,false,true,1,(other.damage_mult/2),direction,sprPomniPlush,false);
	drop_weapon(smuggled_items,smuggled_item_sprite);
}

slashed = true;
