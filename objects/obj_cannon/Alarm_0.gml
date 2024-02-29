/// @desc

if (instance_exists(obj_enemyparent)) {
	var cannonball = instance_create_layer(x+(sprite_width/2),y+(sprite_height/2),"Instances",obj_cannonball)
	cannonball.target = undefined
	cannonball.damage = attack_power
	cannonball.dir = dir
	cannonball.proj_speed = proj_speed
}

alarm_set(0,gamespeed_microseconds*(60/attack_speed))