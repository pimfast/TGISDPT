/// @desc

if (global.fastforward == false) {
	global.fastforward = true
	game_set_speed(game_get_speed(gamespeed_microseconds)*2,gamespeed_microseconds)
} else {
	global.fastforward = false
	game_set_speed(game_get_speed(gamespeed_microseconds)*0.5,gamespeed_microseconds)
}