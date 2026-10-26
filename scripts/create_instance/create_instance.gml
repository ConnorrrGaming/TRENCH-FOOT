function create_instance(obj_x,obj_y,obj_layer,object)
{
	if !instance_exists(object)
	{
		instance_create_layer(obj_x,obj_y,obj_layer,object);
	}
}