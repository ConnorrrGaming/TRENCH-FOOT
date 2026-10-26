global.ambiance = [sndAmbiance1];
fade_time = 100 * room_speed;
global.music_playing = audio_play_sound(global.ambiance[0],0,true);
audio_stop_sound(global.music_playing);