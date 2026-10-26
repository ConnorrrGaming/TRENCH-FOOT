draw_set_font(fntMenuText);
draw_set_colour(c_red);
draw_set_valign(fa_left);
draw_set_halign(fa_left);
draw_text(x,y,"V"+string(global.version_number))
draw_set_font(fntCopyrightText);
draw_set_colour(c_white);
draw_text(x,y+30,"Created & Developed by BLOODBATH GAMES")