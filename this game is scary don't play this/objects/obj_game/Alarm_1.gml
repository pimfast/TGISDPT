///@desc spawn enemy

if (!is_undefined(enemynumber) && (currentwave != -1)) {
	chosenenemy = array_get(global.waves[currentwave],enemynumber)
	switch (chosenenemy) {
		case "baddie":
			instance_create_layer(-8,enemyspawn_y,"Instances",obj_baddie)
			alarm_set(1,gamespeed_microseconds*30) 
			break;
		case "bigbaddie":
			instance_create_layer(-8,enemyspawn_y,"Instances",obj_bigbaddie)
			alarm_set(1,gamespeed_microseconds*30) 
			break;
		case "slug":
			instance_create_layer(-8,enemyspawn_y,"Instances",obj_slug)
			alarm_set(1,gamespeed_microseconds*30) 
			break;
		case 0:
			alarm_set(1,gamespeed_microseconds*30)
			break;
		case "END":
			
			break;
		case "3":
			instance_create_layer(-8,enemyspawn_y,"Instances",obj_3)
			alarm_set(1,gamespeed_microseconds*30)
			break;
	}
}

if (chosenenemy != "END") {
	enemynumber++
} else { 
	if (!instance_exists(obj_enemyparent)) {
		currentwave++;
		if(currentwave > array_length(global.waves)-1){
			currentwave = -1; // indicates the level is done and you win
		}
			
		enemynumber = 0
		alarm_set(1,-1)
		alarm_set(0,60)
		timetowave = 5
		if (currentwave == -1) {
			alarm_set(0,-1)
			timetowave = 0
			exit;
		}
	} else {
		//check again
		alarm_set(1,gamespeed_microseconds*1)
	}
}
	
//if (enemynumber < array_length(global.waves[currentwave])) {
//	enemynumber++
//}