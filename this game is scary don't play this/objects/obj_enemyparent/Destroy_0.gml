/// @desc

obj_game.cash += cashvalue
if (dir != "END") {
	var diesoundsize = 1
	switch (object_index) {
	    case obj_baddie:
	        diesoundsize = 1
	        break;
	    case obj_bigbaddie:
	        diesoundsize = 0.5
	        break;
	    case obj_slug:
	        diesoundsize = 1.5
	        break;
	    default:
	        break;
	}
	audio_play_sound(sfx_bworm,1,0,5,0,diesoundsize)
	instance_create_layer(x,y,"Instances",obj_dieeffect)
}