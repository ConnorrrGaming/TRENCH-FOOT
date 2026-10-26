if global.fade.image_alpha >= .9 && global.fade.fade_type == true
{
	if global.next_area != undefined
	{
		room_goto(global.next_area);
	}
	else
	{
		room_goto(rmWarning);
	}
}