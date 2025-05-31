/// @desc

if (room != rm_menu) {
	if (timetowave > 0 && !instance_exists(obj_enemyparent)) {
		draw_set_halign(fa_left)
		draw_set_valign(fa_middle)
		var timetowavex = 0
		var timetowavey = enemyspawn_y
		while (timetowavex < obj_camera.cameraX) {timetowavex++}
		while (timetowavex > obj_camera.cameraX+obj_camera.cameraWidth) {timetowavex--}
		while (timetowavey < obj_camera.cameraY+5) {timetowavey++}
		while (timetowavey > obj_camera.cameraY+obj_camera.cameraHeight-5) {timetowavey--}
		draw_text_color(timetowavex,timetowavey,string(timetowave),c_black,c_black,c_black,c_black,1)
	}
	
	if (instance_exists(obj_heldtower)) {
		//show range
		draw_set_alpha(0.3)
		var heldtowerrange = 0
		switch (global.heldtower) {
		    case "archer":
		        heldtowerrange = 3
		        break;
		    case "cannon":
				heldtowerrange = 4
		        break;
		    case "knight":
		        heldtowerrange = 1
		        break;
		    case "saw":
		        heldtowerrange = 0
		        break;
		    case "wizard":
		        heldtowerrange = 2
		        break;
		    default:
		        sprite_index = noone
		        break;
		}
		if (global.heldtower == "cannon") {
			switch (obj_heldtower.dir) {
				case "L":
					draw_rectangle_color(obj_heldtower.x+16,obj_heldtower.y+16,(obj_heldtower.x-16)-(heldtowerrange*16)-1,obj_heldtower.y-1,c_black,c_black,c_black,c_black,false)
					break;
				case "R":
					draw_rectangle_color(obj_heldtower.x,obj_heldtower.y+16,(obj_heldtower.x+32)+(heldtowerrange*16)-1,obj_heldtower.y-1,c_black,c_black,c_black,c_black,false)
					break;
				case "U":
					draw_rectangle_color(obj_heldtower.x+16,obj_heldtower.y+16,obj_heldtower.x-1,(obj_heldtower.y-16)-(heldtowerrange*16)-1,c_black,c_black,c_black,c_black,false)
					break;
				case "D":
					draw_rectangle_color(obj_heldtower.x+16,obj_heldtower.y,obj_heldtower.x-1,(obj_heldtower.y+32)+(heldtowerrange*16)-1,c_black,c_black,c_black,c_black,false)
					break;
				default:
				    break;
			}
		} else {
			draw_circle_color(obj_heldtower.x+(obj_heldtower.sprite_width/2)-1,obj_heldtower.y+(obj_heldtower.sprite_height/2)-1,heldtowerrange*16,c_black,c_black,false)
		}
	draw_set_alpha(1)
	}
	
	if (!instance_exists(selectedtower)) {
			selectedtower = undefined
	} else {
		if (!is_undefined(selectedtower)) {
			if (selectedtowertype == obj_saw) {selectedtower.x -= 8; selectedtower.y -= 8}
			draw_set_alpha(0.3)
			if (selectedtowertype == obj_cannon) {
				switch (selectedtower.dir) {
				    case "L":
					    draw_rectangle_color(selectedtower.x+16,selectedtower.y+16,(selectedtower.x-16)-(selectedtower.attack_range*16)-1,selectedtower.y-1,c_black,c_black,c_black,c_black,false)
					    break;
					case "R":
					    draw_rectangle_color(selectedtower.x-1,selectedtower.y+16,(selectedtower.x+32)+(selectedtower.attack_range*16)-1,selectedtower.y-1,c_black,c_black,c_black,c_black,false)
					    break;
					case "U":
					    draw_rectangle_color(selectedtower.x+16,selectedtower.y+16,selectedtower.x-1,(selectedtower.y-16)-(selectedtower.attack_range*16)-1,c_black,c_black,c_black,c_black,false)
					    break;
					case "D":
					    draw_rectangle_color(selectedtower.x+16,selectedtower.y,selectedtower.x-1,(selectedtower.y+32)+(selectedtower.attack_range*16)-1,c_black,c_black,c_black,c_black,false)
					    break;
				    default:
				        break;
				}
			} else {
				draw_circle_color(selectedtower.x+(selectedtower.sprite_width/2)-1,selectedtower.y+(selectedtower.sprite_height/2)-1,selectedtower.attack_range*16,c_black,c_black,false)
			}
			draw_set_alpha(1)
			draw_circle_color(selectedtower.x+(selectedtower.sprite_width/2)-1,selectedtower.y+(selectedtower.sprite_height/2)-1,25,c_orange,c_orange,true)
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
			if (selectedtowertype == obj_saw) {selectedtower.x += 8; selectedtower.y += 8}
		}
	}
}