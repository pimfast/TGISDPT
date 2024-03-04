/// @desc

draw_set_font(fnt_1)

if (room != rm_menu) {
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	draw_text_color(300,10,"Wave: "+string(currentwave+1)+"/"+string(array_length(global.waves)),c_black,c_black,c_black,c_black,1)
	draw_text_color(300,20,"Cash: "+string(int64(cash)),c_purple,c_purple,c_purple,c_purple,1)
	draw_text_color(300,30,"HP: "+string(defense_points),c_purple,c_purple,c_purple,c_purple,1)
	
	if (instance_exists(obj_heldtower)) {
		//show range
		draw_set_alpha(0.3)
		var heldtowerrange = 0
		switch (global.heldtower) {
		    case "archer":
		        heldtowerrange = 48
		        break;
		    case "cannon":
				heldtowerrange = 0
		        break;
		    case "knight":
		        heldtowerrange = 16
		        break;
		    case "saw":
		        heldtowerrange = 0
		        break;
		    case "wizard":
		        heldtowerrange = 36
		        break;
		    default:
		        sprite_index = noone
		        break;
		}
		draw_circle_color(obj_heldtower.x+(obj_heldtower.sprite_width/2),obj_heldtower.y+(obj_heldtower.sprite_height/2),heldtowerrange,c_black,c_black,false)
	}
	
	if (!instance_exists(selectedtower)) {
			selectedtower = undefined
	} else {
		if (!is_undefined(selectedtower)) {
			draw_set_alpha(0.3)
			draw_circle_color(selectedtower.x+(selectedtower.sprite_width/2),selectedtower.y+(selectedtower.sprite_height/2),selectedtower.attack_range,c_black,c_black,false)
			draw_set_alpha(1)
			draw_circle_color(selectedtower.x+(selectedtower.sprite_width/2),selectedtower.y+(selectedtower.sprite_height/2),25,c_orange,c_orange,true)
			if (!instance_exists(obj_button_sell)) {
				var towersellbutton = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2),selectedtower.y+(selectedtower.sprite_height/2)+25,"Buttons",obj_button_sell)
			
				if (selectedtowertype == obj_cannon) /* || (selectedtowertype == obj_knight && selectedtower.upgradeC >= 3) //uncomment when upgrades are special*/ {
					var towerrotatecwbutton = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)-25,selectedtower.y+(selectedtower.sprite_height/2),"Buttons",obj_button_rotateccw)
					var towerrotateccwbutton = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)+25,selectedtower.y+(selectedtower.sprite_height/2),"Buttons",obj_button_rotatecw)
				}
			
				if (selectedtowertype == obj_wizard) {
					//var towerteleportbutton = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)-25,selectedtower.y+(selectedtower.sprite_height/2),"Buttons",obj_button_teleport)
				}
			
				var towerupgradebuttonA = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)-20,selectedtower.y+(selectedtower.sprite_height/2)-22,"Buttons",obj_button_upgradeA)
				var towerupgradebuttonB = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2),selectedtower.y+(selectedtower.sprite_height/2)-25,"Buttons",obj_button_upgradeB)
				var towerupgradebuttonC = instance_create_layer(selectedtower.x+(selectedtower.sprite_width/2)+20,selectedtower.y+(selectedtower.sprite_height/2)-22,"Buttons",obj_button_upgradeC)
			}
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
			if (defense_points >= maxdp) {draw_text_color(room_width/2,123,"perfect!!",c_purple,c_purple,c_purple,c_purple,1)}
			if (iamagoodprogrammer == false) {
				audio_stop_all()
				audio_play_sound(mus_win,1,0)
				selectedtower = undefined
				iamagoodprogrammer = true
			}
		}
	}
	
} else {

//draw_set_halign(fa_center)
//draw_set_valign(fa_middle)

//draw_text_transformed_color(100,room_height/2,"Start",1.1,1.1,0,c_black,c_black,c_black,c_black,1)
//draw_text_color(100,room_height/2,"Start",c_purple,c_purple,c_purple,c_purple,1)
}