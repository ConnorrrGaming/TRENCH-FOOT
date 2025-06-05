function create_timer(length,units,_method)
{
	var bitch = function _method()
	{
		
	}
	var timesource = time_source_create(time_source_global,length,units,bitch)
	return timesource;
}