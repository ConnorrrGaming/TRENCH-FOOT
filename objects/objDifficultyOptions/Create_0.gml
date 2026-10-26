screen_h = window_get_height();
screen_w = window_get_width();

title_pos_h = screen_h;
title_pos_w = screen_w;

VeryEasy = function()
{
	room_goto(rmPreGameMessage);
}

Easy = function()
{
	room_goto(rmPreGameMessage);
}

Normal = function()
{
	room_goto(rmPreGameMessage);
	
}

Hard = function()
{
	room_goto(rmPreGameMessage);
}

VeryHard = function()
{
	room_goto(rmPreGameMessage);
}

Custom = function()
{
	room_goto(rmPreGameMessage);
}


menu_border = 24;
menu_space = 18;

width = 128;
height = menu_border*6;

menu_option_function = [];
menu_option_function[0] = VeryEasy;
menu_option_function[1] = Easy;
menu_option_function[2] = Normal;
menu_option_function[3] = Hard;
menu_option_function[4] = VeryHard;
menu_option_function[5] = Custom;

menu_title = "DIFFICULTY"

menu_option_string = [];
menu_option_string[0] = "FRESH"
menu_option_string[1] = "ACTIVE DECAY";
menu_option_string[2] = "ADVANCED DECAY";
menu_option_string[3] = "SKELETONIZED";
menu_option_string[4] = "EXHUMED";
menu_option_string[5] = "~EMBALMED TO ORDER~";

menu_description_string = [];
menu_description_string[0] = "Very Easy Mode: For players who just want to focus on story, or are just starting out playing action games. Enemies are weak, have slow reaction times & don't do too much damage.";
menu_description_string[1] = "Easy Mode: For players who are looking for a casual experience with a little bit of challenge. Enemies aren't too strong, have decently fast reaction times, and do half as much damage as you.";
menu_description_string[2] = "Normal Mode: The recommended starting point for novice / intermediate players who want a good, honest challenge. Enemies are fairly strong, have fast reaction times & do as much damage as you. Reinforcements will be called whenever you've been spotted, if possible.";
menu_description_string[3] = "Hard Mode: For players who want to kick the difficulty up a notch. Enemies are very strong, have faster reaction times, do as much damage as you and are more aggressive in their approach. Reinforcements will be called whenever you've been spotted, if possible.";
menu_description_string[3] = "Very Hard Mode: Welcome to TRENCH FOOT! Enemies are at their strongest, have unnaturally fast reaction times, do twice as much damage as you, are at their most aggressive and will always call for reinforcements if you've been spotted. The ultimate survival experience!";
menu_description_string[3] = "Custom: For those who want to fine-tune their experience. Adjust the enemy AI to your preference, for your own ideal playthrough!";

current_option = 0;

menu_bound = array_length(menu_option_string);

