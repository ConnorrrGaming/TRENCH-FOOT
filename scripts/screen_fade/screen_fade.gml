function screen_fade(fade_type,fade_amount,fade_starting_alpha,fade_colour)
{
	global.fade.fade_type = fade_type;
	global.fade.fade_amount = fade_amount;
	global.fade.image_alpha = fade_starting_alpha;
	global.fade.image_blend = fade_colour;
}