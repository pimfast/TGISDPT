/// @desc

if (instance_exists(obj_baddie)) {
	var cannonball = instance_create_layer(x,y,"Instances",obj_cannonball)
	cannonball.target = obj_baddie
	cannonball.damage = attack_power
}

alarm_set(0,gamespeed_microseconds*60)