/// @desc

draw_set_font(fnt_1)

if (room != rm_menu) {
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	draw_text_color(300,10,"Wave: "+string(currentwave+1)+"/"+string(array_length(global.waves)),c_black,c_black,c_black,c_black,1)
	draw_text_color(300,20,"Cash: "+string(int64(cash)),c_purple,c_purple,c_purple,c_purple,1)
	draw_text_color(300,30,"HP: "+string(defense_points),c_purple,c_purple,c_purple,c_purple,1)
	
	if (!instance_exists(selectedtower)) {
			selectedtower = undefined
	} else {
		if (!is_undefined(selectedtower)) {
			draw_set_alpha(0.3)
			draw_circle_color(selectedtower.x+(selectedtower.sprite_width/2),selectedtower.y+(selectedtower.sprite_height/2),selectedtower.attack_range,c_black,c_black,false)
			draw_set_alpha(1)
			draw_circle_color(selectedtower.x+(selectedtower.sprite_width/2),selectedtower.y+(selectedtower.sprite_height/2),25,c_orange,c_orange,true)
			var towersellbutton = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2),selectedtower.y+(selectedtower.sprite_height/2)+25,"Instances",obj_button_sell)
			towersellbutton.assignedtower = selectedtower
			
			var towerrotatecwbutton = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)+25,selectedtower.y+(selectedtower.sprite_height/2),"Instances",obj_button_rotateccw)
			towerrotatecwbutton.assignedtower = selectedtower
			var towerrotateccwbutton = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)-25,selectedtower.y+(selectedtower.sprite_height/2),"Instances",obj_button_rotatecw)
			towerrotateccwbutton.assignedtower = selectedtower
			
			var towerteleportbutton = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)-25,selectedtower.y+(selectedtower.sprite_height/2),"Instances",obj_button_teleport)
			towerteleportbutton.assignedtower = selectedtower
			
			var towerupgradebuttonA = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)-20,selectedtower.y+(selectedtower.sprite_height/2)-23,"Instances",obj_button_upgradeA)
			towerupgradebuttonA.assignedtower = selectedtower
			var towerupgradebuttonB = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2),selectedtower.y+(selectedtower.sprite_height/2)-25,"Instances",obj_button_upgradeB)
			towerupgradebuttonB.assignedtower = selectedtower
			var towerupgradebuttonC = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)+20,selectedtower.y+(selectedtower.sprite_height/2)-23,"Instances",obj_button_upgradeC)
			towerupgradebuttonC.assignedtower = selectedtower
		}
	}
	
	if (timetowave > 0 && !instance_exists(obj_enemyparent)) {
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_text_color(0,65,string(timetowave),c_black,c_black,c_black,c_black,1)
	}
	
	if (defense_points <= 0) {
		alarm_set(0,-1)
		alarm_set(1,-1)
		timetowave = 0
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text_transformed_color(room_width/2,room_height/2,"game over!",5,5,0,c_purple,c_purple,c_purple,c_purple,1)
	}
	if (!instance_exists(obj_enemyparent) && currentwave == -1 && defense_points > 0) {
		if (room_exists(room_next(room))) {
			room_goto_next()
		} else {
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_text_transformed_color(room_width/2,room_height/2,"you win!",5,5,0,c_purple,c_purple,c_purple,c_purple,1)
			if (iamagoodprogrammer == 0) {
				audio_stop_all()
				audio_play_sound(mus_win,1,0)
				selectedtower = undefined
				iamagoodprogrammer = 1
			}
		}
	}
	
} else {

//draw_set_halign(fa_center)
//draw_set_valign(fa_middle)

//draw_text_transformed_color(100,room_height/2,"Start",1.1,1.1,0,c_black,c_black,c_black,c_black,1)
//draw_text_color(100,room_height/2,"Start",c_purple,c_purple,c_purple,c_purple,1)
}