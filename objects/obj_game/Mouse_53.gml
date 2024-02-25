/// @desc

// when not on any button we place the tower
if (!place_meeting(mouse_x,mouse_y,obj_button_archer)) {
	window_set_cursor(cr_none)
	switch (global.heldtower) {
	    case "archer":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_archer)
			obj_game.cash -= obj_button_archer.itemprice
			
	        break;
		case "cannon":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_cannon)
			cursor_sprite = spr_cannon
			
			break;
		case "knight":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_knight)
			cursor_sprite = spr_knight
			
			break;
		case "saw":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_saw)
			cursor_sprite = spr_saw
			
			break;
		case "wizard":
			instance_create_layer(mouse_x,mouse_y,"Instances",obj_wizard)
			cursor_sprite = spr_wizard
			
			break;
	    default:
	        //do nothing
			
	        break;
	}
	global.heldtower = ""
	window_set_cursor(cr_default)
}

