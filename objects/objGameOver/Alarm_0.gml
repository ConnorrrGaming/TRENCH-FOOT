image_speed = 1;

audio_play_sound(game_over_sound,0,false);

alarm[1] = game_over_string_delay * room_speed;
alarm[2] = audio_sound_length(game_over_sound) * room_speed;