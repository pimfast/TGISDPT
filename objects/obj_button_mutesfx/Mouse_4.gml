/// @desc

if (global.sfx_muted == false) {
	//it's not muted, make it so
	audio_group_set_gain(ag_sfx,0,500)
	image_index = 1
	global.sfx_muted = true
} else {
	//it's muted, unmute
	audio_group_set_gain(ag_sfx,1,500)
	image_index = 0
	global.sfx_muted = false
}