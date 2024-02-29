/// @desc

//show_message(string(mouse_x) + " " + string(mouse_y))
//show_message(global.heldtower)

// when not on any button we place the tower
//if (!place_meeting(mouse_x,mouse_y,obj_button_archer)) {
if (mouse_x < 160 || mouse_y < 160) {
	window_set_cursor(cr_none)
	// we gotta place towers only on grid positions, so round mouse_x and mouse_y to the nearest grid
	// grid = 16
	tower_x = floor(mouse_x/16) * 16;
	tower_y = floor(mouse_y/16) * 16;
<<<<<<< HEAD
	switch (global.heldtower) {
	    case "archer":
			instance_create_layer(tower_x,tower_y,"Instances",obj_archer)
			obj_game.cash -= obj_button_archer.itemprice
			global.heldtower = ""
	        break;
		case "cannon":
			instance_create_layer(tower_x,tower_y,"Instances",obj_cannon)
			obj_game.cash -= obj_button_cannon.itemprice
			global.heldtower = ""
			//cursor_sprite = spr_cannon
			break;
		case "knight":
			instance_create_layer(tower_x,tower_y,"Instances",obj_knight)
			obj_game.cash -= obj_button_knight.itemprice
			global.heldtower = ""
			//cursor_sprite = spr_knight
			break;
		case "saw":
			instance_create_layer(tower_x,tower_y,"Instances",obj_saw)
			obj_game.cash -= obj_button_saw.itemprice
			global.heldtower = ""
			//cursor_sprite = spr_saw
			break;
		case "wizard":
			instance_create_layer(tower_x,tower_y,"Instances",obj_wizard)
			obj_game.cash -= obj_button_wizard.itemprice
			global.heldtower = ""
			//cursor_sprite = spr_wizard
			break;
		case "":
			break;
=======
	// is this location occupied?
	if( ! isOccupied(tower_x, tower_y)){
		switch (global.heldtower) {
			case "archer":
				instance_create_layer(tower_x,tower_y,"Instances",obj_archer);
				obj_game.cash -= obj_button_archer.itemprice;
				occupy(tower_x, tower_y);
				global.heldtower = "";
				break;
			case "cannon":
				instance_create_layer(tower_x,tower_y,"Instances",obj_cannon);
				obj_game.cash -= obj_button_cannon.itemprice;
				occupy(tower_x, tower_y);
				global.heldtower = "";
				break;
			case "knight":
				instance_create_layer(tower_x,tower_y,"Instances",obj_knight);
				obj_game.cash -= obj_button_knight.itemprice;
				occupy(tower_x, tower_y);
				global.heldtower = "";
				break;
			case "saw":
				instance_create_layer(tower_x,tower_y,"Instances",obj_saw);
				obj_game.cash -= obj_button_saw.itemprice;
				occupy(tower_x, tower_y);
				global.heldtower = "";
				break;
			case "wizard":
				instance_create_layer(tower_x,tower_y,"Instances",obj_wizard);
				obj_game.cash -= obj_button_wizard.itemprice;
				occupy(tower_x, tower_y);
				global.heldtower = "";
				break;
			case "":
				if (instance_place(mouse_x,mouse_y,obj_towerparent)) {
					obj_game.selectedtower = undefined;
				}
				break;
		}
>>>>>>> f37e8d85d34a2483433601157994ebfd9c912ca2
	}
	else{
		// beep, error
	}
	
	window_set_cursor(cr_default)
	cursor_sprite = -1
}

