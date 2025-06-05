function npc_patrol()
{
	spotted = false;
	//show_debug_message("Don't mind me, just chilling here :)");
	if path_started != true
	{
		path_start(patrol_path,patrol_speed,patrol_path_endaction,0);
		path_started = true;
	}
	rotate_sprite_to_path(patrol_speed / 4);
}