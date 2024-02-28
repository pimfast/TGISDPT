/// @desc count down wave timer

if (!instance_exists(obj_enemyparent)) {
	timetowave -= 1
}

if (timetowave > 0) {
	alarm_set(0,gamespeed_microseconds*60)
} else {
	alarm_set(1,gamespeed_microseconds*60)
}