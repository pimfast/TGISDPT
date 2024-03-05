/// @desc

draw_self()

x = obj_camera.cameraX + buttonX
y = obj_camera.cameraY + buttonY

draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text_color(x+16,y+32,"$"+string(itemprice),c_purple,c_purple,c_purple,c_purple,1)