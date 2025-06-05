function npc_suspicious()
{
	spotted = false;
	path_end();
	speed = 0;
	rotate_to_point(x,y,target.x,target.y,.2);
	//show_debug_message("Huh? Didya here that? :0");
}