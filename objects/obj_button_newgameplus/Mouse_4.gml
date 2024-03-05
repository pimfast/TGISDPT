/// @desc

with (obj_game) {
	currentwave = 0
	enemynumber = 0
	alarm_set(1,-1)
	alarm_set(0,60)
	timetowave = 5
	instance_destroy(obj_button_nextlevel)
	instance_destroy(obj_button_newgameplus)
}