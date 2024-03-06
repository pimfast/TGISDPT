/// @desc

if (obj_game.selectedtower == undefined) {instance_destroy(); exit;}
draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
if (obj_game.cash < cost) {
	image_index = 1
	draw_set_color(c_ltgray)
} else {
	image_index = 0
	draw_set_color(c_white)
}
draw_text(x,y+12,"$"+string(cost))


if (showtext == true) {
	draw_text_color(x,y-10,string(name),c_white,c_white,c_white,c_white,1)
	draw_set_font(fnt_2)
	draw_text_color(x,y-20,string(description),c_black,c_black,c_black,c_black,1)
	draw_set_font(fnt_1)
}

//push it into the room
while ((y-(sprite_height/2)) < 0) {y++}
while ((y+(sprite_height/2)) > room_height) {y--}
while ((x-(sprite_width/2)) < 0) {x++}
while ((x+(sprite_width/2)) > room_width) {x--}

while (room == rm_level2 && (y < 312 || ((object_index == obj_button_rotatecw || object_index == obj_button_rotateccw) && y < 330))) {y++}