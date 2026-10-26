function begin_path(path,grid,path_target,path_spd,end_state,end_dist)
{
	if mp_grid_path(grid,path,x,y,path_target.x,path_target.y,true) 
	{
		path_start(path,path_spd,path_action_stop,0); 
		if place_meeting(self.x,self.y,path_target) then path_position = 1;
		image_angle = direction;
		if path_position == 1 || (distance_to_object(path_target) <= end_dist)
		{
			state = end_state;
			path_end();
		}
	}
}