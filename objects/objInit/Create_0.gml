//("Initialisation starting:\nPlease wait...");
global.noise = undefined;
global.noise_target = undefined;

global.fade = instance_create_depth(x,y,-1,objFade);

global.version_number = "1.0.0";

global.blood_fade = false;

global.next_area = undefined;

global.safe_room = false;

global.secrets = 0;

global.stats = instance_create_depth(x,y,0,objStats);

global.hud_queue = [];


debug_overlay = false;

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

//("Initialisation complete!\nNow loading Trench Foot...");

room_goto_next();