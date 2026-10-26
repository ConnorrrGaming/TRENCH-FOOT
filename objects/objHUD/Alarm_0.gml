if objPlayer.meter_at_max == true
{
	switch(bar_max_col)
	{
		case(bar_col_start):
			bar_max_col = bar_col_middle;
		break;
		
		case(bar_col_middle):
			bar_max_col = bar_col_end;
		break;		
		
		case(bar_col_end):
			bar_max_col = bar_col_start;
		break;		
		
	}
	
}
	
alarm[0] = bar_flash_delay * delay_mult;