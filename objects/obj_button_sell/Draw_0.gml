/// @desc

if (obj_game.selectedtower == undefined) {instance_destroy(); exit;}
draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text_color(x,y+12,"+$"+string(int64(obj_game.selectedtower.towervalue*0.5)),c_lime,c_lime,c_green,c_green,1)

if (showtext == true) {
	draw_text_color(x,y-20,string(description),c_white,c_white,c_white,c_white,1)
}