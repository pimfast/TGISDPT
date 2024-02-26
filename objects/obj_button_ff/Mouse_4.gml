/// @desc

if (global.fastforward == false) {
	//speed it up
	global.fastforward = true
	game_set_speed(game_get_speed(gamespeed_fps)*2,gamespeed_fps)
} else {
	//slow down back to normal
	global.fastforward = false
	game_set_speed(game_get_speed(gamespeed_fps)*0.5,gamespeed_fps)
}