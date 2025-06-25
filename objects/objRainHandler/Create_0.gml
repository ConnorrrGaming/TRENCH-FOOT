if thunder == true
{
	thunder_cloud = instance_create_depth(x,y,thunder_cloud_depth,objThunderCloud);
	thunder_cloud.image_alpha = thunder_cloud_alpha;
}

rain_sound = audio_play_sound(sndRain,0,true);
