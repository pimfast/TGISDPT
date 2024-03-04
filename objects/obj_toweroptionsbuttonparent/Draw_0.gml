/// @desc

if (obj_game.selectedtower == undefined) {instance_destroy(); exit;}
draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text_color(x,y+12,"$"+string(cost),c_white,c_white,c_white,c_white,1)
//if (obj_game.cost < cost) {image_index = 1} else {image_index = 0}

if (showtext == true) {
	draw_text_color(x,y-10,string(name),c_white,c_white,c_white,c_white,1)
	draw_set_font(fnt_2)
	draw_text_color(x,y-20,string(description),c_black,c_black,c_black,c_black,1)
	draw_set_font(fnt_1)
}