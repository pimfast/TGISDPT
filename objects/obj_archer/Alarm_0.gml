/// @desc

if (instance_exists(obj_baddie)) {
	var arrow = instance_create_layer(x,y,"Instances",obj_arrow)
	arrow.target = obj_baddie
	arrow.damage = attack_power
}

alarm_set(0,gamespeed_microseconds*60)