/// @desc

if (obj_game.cash >= cost) {
	obj_game.cash -= cost
	
	audio_play_sound(sfx_bworm,1,0)
	
	switch (obj_game.selectedtower.dir) {
	    case "L":
	        obj_game.selectedtower.dir = "D"
			obj_game.selectedtower.sprite_index = spr_cannondown
	        break;
	    case "D":
	        obj_game.selectedtower.dir = "R"
			obj_game.selectedtower.sprite_index = spr_cannonright
	        break;
	    case "R":
			obj_game.selectedtower.dir = "U"
			obj_game.selectedtower.sprite_index = spr_cannonup
	        break;
	    case "U":
	        obj_game.selectedtower.dir = "L"
			obj_game.selectedtower.sprite_index = spr_cannonleft
	        break;
	    default:
	        break;
	}
}