/// @desc

if (global.sfx_muted == true) {
	audio_group_set_gain(ag_sfx,0,0)
	image_index = 1
} else {
	audio_group_set_gain(ag_sfx,1,0)
	image_index = 0
}