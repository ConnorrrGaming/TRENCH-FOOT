if using_weapon == true 
{
	using_weapon = false;
}

if reloading == true && dead != true
{
	reload();
}

if dead == true
{
	image_index = image_number-1;
}