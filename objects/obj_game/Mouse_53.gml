/// @desc

//show_message(string(mouse_x) + " " + string(mouse_y))
//show_message(global.heldtower)

// when not on any button we place the tower
//if (!place_meeting(mouse_x,mouse_y,obj_button_archer)) {
if (mouse_x < 160 && mouse_y < 160) {
	window_set_cursor(cr_none)
	switch (global.heldtower) {
	    case "archer":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_archer)
			obj_game.cash -= obj_button_archer.itemprice
			global.heldtower = ""
			window_set_cursor(cr_default)
			window_set_cursor(cr_none)
	        break;
		case "cannon":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_cannon)
			obj_game.cash -= 100
			global.heldtower = ""
			//cursor_sprite = spr_cannon
			break;
		case "knight":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_knight)
			obj_game.cash -= 100
			global.heldtower = ""
			//cursor_sprite = spr_knight
			break;
		case "saw":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_saw)
			obj_game.cash -= 100
			global.heldtower = ""
			//cursor_sprite = spr_saw
			break;
		case "wizard":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_wizard)
			obj_game.cash -= 100
			global.heldtower = ""
			//cursor_sprite = spr_wizard
			break;
	    default:
	        //do nothing
	        break;
	}
}

