/// @desc create monster

if (!is_undefined(enemynumber+1)) {
	enemynumber++
}
if (!is_undefined(enemynumber) && !is_undefined(currentwave)){
	selectedenemy = array_get(currentwave,enemynumber)
	switch (selectedenemy) {
		case "baddie":
			instance_create_layer(-8,72,"Instances",obj_baddie)
			alarm_set(1,gamespeed_microseconds*30) 
			break;
		case "bigbaddie":
			instance_create_layer(-8,72,"Instances",obj_bigbaddie)
			alarm_set(1,gamespeed_microseconds*30) 
			break;
		case "slug":
			instance_create_layer(-8,72,"Instances",obj_slug)
			alarm_set(1,gamespeed_microseconds*30) 
			break;
		case 0:
			alarm_set(1,gamespeed_microseconds*30) 
			break;
		case "END":
			currentwave = global.wave2
			enemynumber = 0
			alarm_set(1,-1)
			alarm_set(0,60)
			timetowave = 5
			if (currentwave == 6) {
				currentwave = undefined
				audio_stop_all()
				audio_play_sound(mus_win,1,0)
			}
			break;
	}
}