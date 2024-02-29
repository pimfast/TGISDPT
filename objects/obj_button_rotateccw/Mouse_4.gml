/// @desc

if (obj_game.cash >= cost) {
	
	switch (assignedtower.dir) {
	    case "L":
	        assignedtower.dir = "U"
			assignedtower.sprite_index = spr_cannonup
	        break;
	    case "U":
	        assignedtower.dir = "R"
			assignedtower.sprite_index = spr_cannonright
	        break;
	    case "R":
	        assignedtower.dir = "D"
			assignedtower.sprite_index = spr_cannondown
	        break;
	    case "D":
	        assignedtower.dir = "L"
			assignedtower.sprite_index = spr_cannonleft
	        break;
	    default:
	        break;
	}
	obj_game.cash -= cost
}