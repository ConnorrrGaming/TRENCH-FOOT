show_debug_message("Initialisation starting:\nPlease wait...");
global.noise = undefined;
global.noise_target = undefined;

global.blood_fade = false;

audio_group_load(agMusic);
audio_group_load(agSoundEffects);
audio_group_load(agVoices);

audio_group_set_gain(agMusic,1,0);
audio_group_set_gain(agSoundEffects,.6,0);
audio_group_set_gain(agVoices,.6,0);

var _children = time_source_get_children(time_source_global);
var _count = array_length(_children);

for (var i = 0; i < _count; i ++)
{
    time_source_destroy(_children[i]);
}

show_debug_message("Initialisation complete!\nNow loading Trench Foot...");

room_goto_next();