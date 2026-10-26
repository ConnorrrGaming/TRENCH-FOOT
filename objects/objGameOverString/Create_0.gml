var midway_game = false;
strings = [];
strings[0] = "NO REST FOR THE WICKED"
strings[1] = "THE COLD HAND OF DEATH PUSHES YOU BACK\nINTO YOUR UNSTOPPABLE NIGHTMARE"
strings[2] = "THE FIRE OF WAR RAGES ON"
strings[3] = "THERE'S NO ESCAPE, EVEN IN DEATH"
strings[4] = "MAY GOD HAVE MERCY ON YOUR SOUL"
strings[5] = "FOR WHAT YOU SEEK IS NOT AN OPTION"
strings[6] = "YOU WILL CARRY ON IN YOUR TORTURED VESSEL"
strings[7] = "THE HANDS OF FATE ARE CURRENTLY FULL"

if midway_game = true
{
	strings[0] = "GET OFF ME"
	strings[1] = "PLEASE STOP"
	strings[2] = "I DON'T WANT THIS"
	strings[3] = "PLEASE DON'T KILL ME"
	strings[4] = "I'LL DO WHAT YOU SAY, PLEASE DON'T\nKILL MY CHILDREN"
	strings[5] = "KILL ME, NOT MY HUSBAND"
	strings[6] = "I'M SORRY"
	strings[7] = "I DON'T WANT TO DIE"
	strings[8] = "PLEASE BE GENTLE"
}

string_index = irandom_range(0,array_length(strings)-1);
game_over_string = strings[string_index];