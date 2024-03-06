/// @desc

draw_set_font(fnt_1)

if (room != rm_menu) {
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	var currentwavedisplay = currentwave; if (currentwavedisplay == -1) {currentwavedisplay = array_length(global.waves)-1}
	draw_text_color(300,10,"Wave: "+string(currentwavedisplay+1)+"/"+string(array_length(global.waves)),c_black,c_black,c_black,c_black,1)
	draw_text_color(300,20,"Cash: "+string(int64(cash)),c_purple,c_purple,c_purple,c_purple,1)
	draw_text_color(300,30,"HP: "+string(defense_points),c_purple,c_purple,c_purple,c_purple,1)
	
	if (defense_points <= 0) {
		alarm_set(0,-1)
		alarm_set(1,-1)
		timetowave = 0
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text_transformed_color(obj_camera.cameraWidth/2,obj_camera.cameraHeight/2,"game over!",5,5,0,c_purple,c_purple,c_purple,c_purple,1)
		if (!instance_exists(obj_button_restartlevel)) {
			var restartlevelbutton = instance_create_layer(obj_camera.cameraX+(obj_camera.cameraWidth/2),obj_camera.cameraY+(obj_camera.cameraHeight/3)*2,"Buttons",obj_button_restartlevel)
		}
		obj_player.sprite_index = spr_scatlose
	}
	if (!instance_exists(obj_enemyparent) && currentwave == -1 && defense_points > 0) {
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text_transformed_color(obj_camera.cameraWidth/2,obj_camera.cameraHeight/2,"you win!",5,5,0,c_purple,c_purple,c_purple,c_purple,1)
		if (defense_points >= maxdp) {draw_text_color(obj_camera.cameraWidth/2,123,"perfect!!",c_purple,c_purple,c_purple,c_purple,1)}
		if (!instance_exists(obj_button_nextlevel)) {
			audio_stop_all()
			audio_play_sound(mus_win,1,0)
			selectedtower = undefined
			var newgameplusbutton = instance_create_layer(obj_camera.cameraX+(obj_camera.cameraWidth/3),obj_camera.cameraY+(obj_camera.cameraHeight/3)*2+16,"Buttons",obj_button_newgameplus)
			var nextlevelbutton = instance_create_layer(obj_camera.cameraX+(obj_camera.cameraWidth/3)*2,obj_camera.cameraY+(obj_camera.cameraHeight/3)*2+16,"Buttons",obj_button_nextlevel)
		}
		if (instance_exists(obj_heldtower)) {instance_destroy(obj_heldtower)}
		obj_player.sprite_index = spr_scatwin
	}
} else {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_transformed_color(obj_camera.cameraWidth/2,(obj_camera.cameraHeight/3)*2,"SPACE/LMB TO START",1.5,1.5,0,c_purple,c_purple,c_purple,c_purple,titleinstructionsalpha)
	if (alarm_get(3) == -1) {
		alarm_set(3,19.8)
	}
}