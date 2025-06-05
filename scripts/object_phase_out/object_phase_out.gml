function object_phase_out(affected_instance,fade_amount)
{
	affected_instance.image_alpha -= fade_amount;
	if image_alpha <= 0 then instance_destroy(affected_instance);
}