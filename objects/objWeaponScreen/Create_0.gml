audio_play_sound(sndWeaponSelectScreen,0,true);

debug_overlay = false;
debug_overlay_string = "ENABLE ";

Continue = function()
{
	unpause_game();
}

RestartLevel = function()
{
	unpause_game();
	room_restart();
}

RestartGame = function()
{
	game_restart();
}

DebugEnable = function()
{
	switch(debug_overlay)
	{
		case true:
			debug_overlay = false;
			debug_overlay_string = "ENABLE ";
		break;
	
		case false:
			debug_overlay = true;
			debug_overlay_string = "DISABLE ";
		break;
	}
	show_debug_overlay(debug_overlay);
	menu_option_string[3] = string(debug_overlay_string)+"DEBUG OVERLAY";
}

ExitGame = function()
{
	unpause_game();
	screen_fade(true,.01,0,c_black);
}

menu_option_function = [];
menu_option_function[0] = Continue;
menu_option_function[1] = RestartLevel;
menu_option_function[2] = RestartGame;
menu_option_function[3] = DebugEnable;
menu_option_function[4] = ExitGame;

menu_title = "PAUSE MENU";

menu_option_string = [];
menu_option_string[0] = "CONTINUE";
menu_option_string[1] = "RESTART LEVEL";
menu_option_string[2] = "RESTART GAME";
menu_option_string[3] = string(debug_overlay_string)+"DEBUG OVERLAY";
menu_option_string[4] = "EXIT TO TITLE";

current_option = 0;


menu_bound = array_length(menu_option_string);

menu_option_space = 42;

menu_option_offset_x = 200;
menu_option_offset_y = 40;

menu_option_area_x = (global.rain_boundary_centre_x);
menu_option_area_y = (global.rain_boundary_centre_y);

menu_space = 18;