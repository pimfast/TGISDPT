///@desc spawn enemy

if (!is_undefined(enemynumber) && !is_undefined(currentwave)){
	chosenenemy = array_get(global.waves[currentwave],enemynumber)
	switch (chosenenemy) {
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
			currentwave++;
			if(currentwave > 4){
				currentwave = -1;
			}
			
			enemynumber = 0
			alarm_set(1,-1)
			alarm_set(0,60)
			timetowave = 5
			if (currentwave == -1) {
				alarm_set(0,-1)
				timetowave = 0
				iamagoodprogrammer = 0
			}
			break;
	}
}

if (enemynumber < array_length(global.waves[currentwave])) {
	enemynumber++
}