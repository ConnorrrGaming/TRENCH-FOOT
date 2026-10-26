global.fade.image_alpha = 1;
screen_fade(false,.01,1,c_black);

message_string = [];
//message_string[0] = "TRENCH FOOT is a game about war and its brutal consequences on those affected.";
//message_string[1] = "You will see material that may be upsetting or disgusting for some.";
//message_string[2] = "Violence & death are an inevitability in this world & there is no way to avoid that.";
//message_string[3] = "Your conduct on this mission will determine your fate,";
//message_string[4] = "and when that time looms upon you,";
//message_string[5] = "may the cold, withered hands of fate spare you from this eternal nightmare.";

message_string[0] = "Blood is the fertiliser for the\nwarped minds of those who draw it.\nTheir existence depends on\nthe cruelty they inflict.\n\nWithout prey,\nthe predator ceases to exist."


message_string_time = [7,5,4,3,3,5];

//message_string[0] = "may the cold hands of fate spare you from this nightmare"


message_index = 0;

delay = 5;

global.fade.image_alpha = 0;

alarm[0] = message_string_time[message_index] * room_speed;