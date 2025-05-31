/// @desc

buttonX = 0
buttonY = 176

if (global.music_muted == true) {
	audio_group_set_gain(ag_mus,0,0)
	image_index = 1
} else {
	audio_group_set_gain(ag_mus,1,0)
	image_index = 0
}