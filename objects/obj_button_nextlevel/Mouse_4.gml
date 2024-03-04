/// @desc

if (room_exists(room_next(room))) {
	room_goto_next()
} else {
	audio_play_sound(sfx_err,1,0)
}