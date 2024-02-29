/// @desc room change buttons

//if (keyboard_check_pressed(vk_lshift)) {room_goto_previous()}
//if (keyboard_check_pressed(vk_rshift)) {room_goto_next()}

switch (room) {
	case rm_level1:
		var _pos = audio_sound_get_track_position(music)
		if (_pos > 77.35) {
				music = audio_play_sound(TGI_SCARY_DPT__level1___1_,1,0);
		}
		if (keyboard_check_pressed(vk_space)) {
			room_goto_previous()
		}
	    break;
	case rm_menu:
		if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(true))  {
			room_goto_next()
		}
	    break;
}