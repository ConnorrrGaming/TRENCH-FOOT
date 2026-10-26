if global.fade.image_alpha <= .5
{
	audio_play_sound(sndItemPickup,0,false);
	instance_create_layer(208,y,"MenuOptions",objMainMenuOptions);
	instance_destroy(self);
	instance_destroy(copyright);
}