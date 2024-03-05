/// @desc room change buttons

//if (keyboard_check_pressed(vk_lshift)) {room_goto_previous()}
//if (keyboard_check_pressed(vk_rshift)) {room_goto_next()}

switch (room) {
	case rm_level1:
		var _pos = audio_sound_get_track_position(music)
		if (_pos > 77.39) {
				music = audio_play_sound(mus_level1,1,0);
		}
		if (keyboard_check_pressed(vk_escape)) {
			room_goto(rm_menu)
		}
	    break;
	case rm_level2:
		var _pos = audio_sound_get_track_position(music)
		if (_pos > 77.39) {
				music = audio_play_sound(mus_level1,1,0);
		}
		if (keyboard_check_pressed(vk_escape)) {
			room_goto(rm_menu)
		}
	    break;
	case rm_menu:
		if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(true))  {
			room_goto_next()
		}
	    break;
}

if (keyboard_check_pressed(ord("M"))) {
	if (room != rm_menu) {
		with (obj_button_mutemusic) {event_perform(ev_mouse,ev_left_press)}
	} else {
		if (global.music_muted == false) {
			//it's not muted, make it so
			audio_group_set_gain(ag_mus,0,500)
			global.music_muted = true
		} else {
			//it's muted, unmute
			audio_group_set_gain(ag_mus,1,500)
			global.music_muted = false
		}
	}
}

if (room == rm_menu) {
	if (!audio_is_playing(mus_menu)) {
		audio_play_sound(mus_menu,1,1)
	}
}