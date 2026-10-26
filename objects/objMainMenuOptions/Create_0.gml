NewGame = function()
{
	instance_create_depth(x,y,depth,objDifficultyOptions);
	instance_destroy(self);
}

LoadGame = function()
{
	room_goto(rmPreGameMessage);
}

Options = function()
{
	//("You have selected Options");
	
}

Credits = function()
{
	//("You have selected Credits");
}

ExitGame = function()
{
	game_end();
}


menu_border = 24;
menu_space = 18;

width = 128;
height = menu_border*6;

menu_option_function = [];
menu_option_function[0] = NewGame;
menu_option_function[1] = LoadGame;
menu_option_function[2] = Options;
menu_option_function[3] = Credits;
menu_option_function[4] = ExitGame;

menu_title = "MAIN MENU"

menu_option_string = [];
menu_option_string[0] = "NEW GAME"
menu_option_string[1] = "LOAD GAME"
menu_option_string[2] = "OPTIONS"
menu_option_string[3] = "CREDITS"
menu_option_string[4] = "EXIT GAME"

current_option = 0;


menu_bound = array_length(menu_option_string);

