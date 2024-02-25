/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_1)
draw_set_halign(fa_right)

if (room != rm_menu) {
	draw_text_color(300,10,"Cash "+string(cash),c_purple,c_purple,c_purple,c_purple,1)
	draw_text_color(300,20,"DP "+string(defense_points),c_purple,c_purple,c_purple,c_purple,1)
	
	if (timetowave > 0) {
		draw_set_halign(fa_left)
		draw_text_color(0,65,string(timetowave),c_black,c_black,c_black,c_black,1)
	}
	
	if (defense_points <= 0) {
		draw_text_transformed_color(room_width/2,room_height/2,"game over",10,10,0,c_purple,c_purple,c_purple,c_purple,1)
	}
} else {

//draw_set_halign(fa_center)
//draw_set_valign(fa_middle)

//draw_text_transformed_color(100,room_height/2,"Start",1.1,1.1,0,c_black,c_black,c_black,c_black,1)
//draw_text_color(100,room_height/2,"Start",c_purple,c_purple,c_purple,c_purple,1)
}