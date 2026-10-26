global.rain_sound = undefined;
if thunder == true
{
	thunder_cloud = instance_create_depth(x,y,thunder_cloud_depth,objThunderCloud);
	thunder_cloud.image_alpha = thunder_cloud_alpha;
}

if rain_amount > 0 global.rain_sound = audio_play_sound(sndRain,0,true);

if global.safe_room == true then audio_sound_gain(global.rain_sound,.2,10)