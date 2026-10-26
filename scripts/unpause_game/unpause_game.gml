function unpause_game()
{
	instance_activate_all();
	audio_resume_all();
	instance_destroy(self);
}