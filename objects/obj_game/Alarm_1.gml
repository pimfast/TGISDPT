/// @desc create monster

if (!is_undefined(enemynumber+1)) {
	enemynumber++
}
if (enemynumber <= array_length(currentwave)){
	selectedenemy = array_get(currentwave,enemynumber)
	switch (selectedenemy) {
		case "baddie":
			instance_create_layer(-8,72,"Instances",obj_baddie)
			break;
		case "bigbaddie":
			instance_create_layer(-8,72,"Instances",obj_bigbaddie)
			break;
		case "slug":
			instance_create_layer(-8,72,"Instances",obj_slug)
			break;
		case 0:
			break;
	}
	alarm_set(1,gamespeed_microseconds*30) 
}

//else {
//	currentwave++
//	if (currentwave == 6) {
//		currentwave = undefined
//		audio_stop_all()
//		audio_play_sound(mus_win,1,0)
//	}
//}