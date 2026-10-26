function create_and_move_object(_x,_y,_layer,_object,_spr_ind,_img_ind,_spd,_dir)
{
	var obj = instance_create_layer(_x,_y,_layer,_object);
	obj.sprite_index = _spr_ind;
	obj.image_index = _img_ind;
	obj.speed = _spd;
	obj.direction = _dir;
	return obj;
}