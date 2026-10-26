function send_to_hud_queue(hud_string)
{
	try
	{
		with(objHUD)
		{
			var clear_time = 5;
			var max_entries = 4;
			
			clear_queue_entry = function()
			{
				if array_length(global.hud_queue) >= 0
				{
					hud_queue_clear();
				}
			}	
			call_later(clear_time,time_source_units_seconds,clear_queue_entry);
			if array_length(global.hud_queue) >= max_entries then hud_queue_clear();
			array_push(global.hud_queue,hud_string);
		}
	}
	catch(_exception)
	{
		show_debug_message(_exception.longMessage);
	}
}