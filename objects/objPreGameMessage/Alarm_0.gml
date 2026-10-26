if message_index < (array_length(message_string) -1)
{
	message_index++;
}
else
{
	room_goto_next();
}
alarm[0] = message_string_time[message_index] * room_speed;