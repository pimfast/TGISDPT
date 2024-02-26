/// @desc

if (obj_game.cash >= itemprice) {
	global.heldtower = itemtype
	window_set_cursor(cr_none)
	switch (itemtype) {
	    case "archer":
			cursor_sprite = spr_archer
	        break;
	    case "cannon":
			cursor_sprite = spr_cannonleft
	        break;
	    case "knight":
			cursor_sprite = spr_knight
	        break;
	    case "saw":
			cursor_sprite = spr_saw
	        break;
	    case "wizard":
			cursor_sprite = spr_wizard
	        break;
	}
}