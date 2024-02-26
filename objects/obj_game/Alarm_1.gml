/// @desc create monster

enemynumber++

if ( ! is_undefined(currentwave[enemynumber]) && currentwave[enemynumber] != 0){
	selectedenemy = currentwave[enemynumber]
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
	}
} 
alarm_set(1,60)
//else {
//	currentwave++
//	if (currentwave == 6) {
//		currentwave = undefined
//		audio_stop_all()
//		audio_play_sound(mus_win,1,0)
//	}
//}