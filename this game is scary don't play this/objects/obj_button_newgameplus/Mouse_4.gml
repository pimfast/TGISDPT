/// @desc

with (obj_game) {
	currentwave = 0
	enemynumber = 0
	alarm_set(1,-1)
	alarm_set(0,60)
	timetowave = 5
	obj_player.sprite_index = spr_scatdown
	instance_destroy(obj_button_nextlevel)
	instance_destroy(obj_button_newgameplus)
	switch (room) {
	    case rm_level1:
	        music = audio_play_sound(mus_level1,1,0);
	        break;
	    case rm_level2:
	        music = audio_play_sound(mus_level2,1,1);
	        break;
	    default:
	        // code here
	        break;
	}
}