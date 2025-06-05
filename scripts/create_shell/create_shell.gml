function create_shell(shell_type,shell_speed,shell_direction)
{
	var shell = instance_create_layer(x,y,"Shell",shell_type);
	shell.speed = shell_speed;
	shell.direction = shell_direction;
}