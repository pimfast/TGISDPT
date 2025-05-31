/// @desc

draw_self()

x = obj_camera.cameraX + buttonX
y = obj_camera.cameraY + buttonY

if (itemprice > obj_game.cash) {
	draw_set_color(c_gray)
} else {
	draw_set_color(c_white)
}
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text(x+16,y+30,"$"+string(itemprice))