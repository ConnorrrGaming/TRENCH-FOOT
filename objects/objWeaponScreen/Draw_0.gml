draw_set_valign(fa_center);
draw_set_halign(fa_right);

draw_sprite_ext(sprBlackOverlay,image_index,(global.rain_boundary_centre_x),y,window_get_width(),window_get_height(),0,c_white,1);


draw_set_font(fntMenuText);

for (var i = 0; i < menu_bound; i++) {
	var _c = c_white;
	if current_option == i then _c = c_red;
	draw_text_colour(menu_option_area_x+menu_option_offset_x,menu_option_area_y+menu_option_offset_y+(menu_space*i),menu_option_string[i],_c,_c,_c,_c,true);
}