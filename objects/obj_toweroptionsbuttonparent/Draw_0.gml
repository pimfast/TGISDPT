/// @desc

draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text_color(x,y+12,"$"+string(cost),c_white,c_white,c_white,c_white,1)

if (showdescription == true) {
	draw_text_color(x,y-10,string(description),c_white,c_white,c_white,c_white,1)
}