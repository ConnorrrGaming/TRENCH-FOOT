function destroy_time_source_list(list_name)
{
	for(var i = 0; i < array_length(list_name); i++)
	{
		if time_source_exists(list_name[i])
		{
			time_source_destroy(list_name[i]);
		}
	}
}