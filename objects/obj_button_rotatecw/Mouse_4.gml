/// @desc

if (obj_game.cash >= cost) {
	
	switch (obj_game.selectedtower.dir) {
	    case "L":
	        obj_game.selectedtower.dir = "U"
			obj_game.selectedtower.sprite_index = spr_cannonup
	        break;
	    case "U":
	        obj_game.selectedtower.dir = "R"
			obj_game.selectedtower.sprite_index = spr_cannonright
	        break;
	    case "R":
	        obj_game.selectedtower.dir = "D"
			obj_game.selectedtower.sprite_index = spr_cannondown
	        break;
	    case "D":
	        obj_game.selectedtower.dir = "L"
			obj_game.selectedtower.sprite_index = spr_cannonleft
	        break;
	    default:
	        break;
	}
	obj_game.cash -= cost
}