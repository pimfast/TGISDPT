/// @desc

if (global.music_muted == false) {
	//it's not muted, make it so
	audio_group_set_gain(ag_mus,0,500)
	image_index = 1
	global.music_muted = true
} else {
	//it's muted, unmute
	audio_group_set_gain(ag_mus,1,500)
	image_index = 0
	global.music_muted = false
}