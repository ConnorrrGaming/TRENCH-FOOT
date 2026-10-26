draw_set_valign(fa_top);
draw_set_halign(fa_center);

draw_set_font(fntMenuText);

draw_text(title_pos_w,title_pos_h,menu_title);

for (var i = 0; i < menu_bound; i++) {
	var _c = c_white;
	if current_option == i then _c = c_red;
	draw_text_colour(x+menu_border,y+menu_border+(menu_space*i),menu_option_string[i],_c,_c,_c,_c,true);
}